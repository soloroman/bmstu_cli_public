import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/departament.dart';
part 'faculty.g.dart';

@JsonSerializable(explicitToJson: true)
class Faculty {
  Faculty({this.shortName, this.fullName, this.departaments});

  String shortName; // ИБМ
  String fullName; // Инженерный бизнес и менеджмент
  List<Departament> departaments;

  factory Faculty.fromJson(Map<String, dynamic> json) => _$FacultyFromJson(json);

  Map<String, dynamic> toJson() => _$FacultyToJson(this);
}