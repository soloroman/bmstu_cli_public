import 'package:html/dom.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/course.dart';
part 'departament.g.dart';

@JsonSerializable(explicitToJson: true)
class Departament { // Кафедра
  Departament({this.name, this.courses, this.htmlElement});

  String name; // ИБМ1
  List<Course> courses;
  @JsonKey(ignore: true)
  Element htmlElement; // div

  Future <Departament> fetchChild() async {
    courses = <Course>[];
    var button_group = htmlElement.getElementsByClassName('btn-group');
    for (var i = 0; i < button_group.length; i++) {
      var course = Course();
      course.number = button_group[i].children[0].text;
      if (button_group[i].getElementsByClassName('btn btn-sm btn-default text-nowrap').isNotEmpty) {
        course.htmlElements = button_group[i].getElementsByClassName('btn btn-sm btn-default text-nowrap');
      }else{
        course.htmlElements = <Element>[];
      }
      await course.fetchChild();
      courses.add(course);
    }
    return this;
  }

  factory Departament.fromJson(Map<String, dynamic> json) => _$DepartamentFromJson(json);

  Map<String, dynamic> toJson() => _$DepartamentToJson(this);
}