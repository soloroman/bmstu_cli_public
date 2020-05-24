import 'package:html/dom.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/group.dart';
part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Course {
  Course({this.number, this.groups, this.htmlElements});

  String number; // 1 курс
  List<Group> groups;
  @JsonKey(ignore: true)
  List<Element> htmlElements;

  Future<Course> fetchChild() async {
    groups = <Group>[];
      for (var i = 0; i < htmlElements.length; i++) {
        var group = Group();
        group.name = htmlElements[i].text.trimRight().trimLeft().trim();
        if (!htmlElements[i].attributes['class'].contains('disabled')) {
          group.url = htmlElements[i].attributes['href'];
        }
        groups.add(group);
      }
    return this;
  }

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}