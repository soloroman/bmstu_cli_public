import 'package:html/dom.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/departament.dart';
part 'faculty.g.dart';

@JsonSerializable(explicitToJson: true)
class Faculty {
  Faculty({this.shortName, this.fullName, this.departaments, this.htmlElement});

  String shortName; // ИБМ
  String fullName; // Инженерный бизнес и менеджмент
  List<Departament> departaments;
  @JsonKey(ignore: true)
  Element htmlElement; // class="panel panel-default"

  Future<Faculty> fetchChild() async {
    departaments = <Departament>[];
    var panel_body = htmlElement.getElementsByClassName('panel-body')[0];
      for (var i = 0; i < panel_body.children.length; i++) {
        var departament = Departament();
        departament.name = panel_body.children[i].children[0].children[0].text;
        departament.htmlElement = panel_body.children[i].children[1];
        await departament.fetchChild();
        departaments.add(departament);
      }
    return this;
  }

  factory Faculty.fromJson(Map<String, dynamic> json) => _$FacultyFromJson(json);

  Map<String, dynamic> toJson() => _$FacultyToJson(this);
}