import 'package:html/dom.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/faculty.dart';
part 'faculty_table.g.dart';

@JsonSerializable(explicitToJson: true)
class FacultyTable {
  FacultyTable({this.faculties, this.htmlElement});

  List<Faculty> faculties;
  @JsonKey(ignore: true)
  Element htmlElement; // class="list-group"

  Future<FacultyTable> fetchChild() async {
    faculties = <Faculty>[];
    var list_group_items = htmlElement.getElementsByClassName('list-group-item');
      for (var i = 0; i < list_group_items.length; ++i) {
        var faculty = Faculty();
        faculty.shortName = list_group_items[i].getElementsByClassName('list-group-item-heading')[0].text;
        faculty.fullName = list_group_items[i].getElementsByClassName('list-group-item-text')[0].text;
        faculty.htmlElement = htmlElement.getElementsByClassName('panel panel-default')[i];
        await faculty.fetchChild();
        faculties.add(faculty);
      }
    return this;
  }

  factory FacultyTable.fromJson(Map<String, dynamic> json) => _$FacultyTableFromJson(json);

  Map<String, dynamic> toJson() => _$FacultyTableToJson(this);
}