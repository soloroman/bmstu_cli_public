import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/course.dart';
part 'departament.g.dart';

@JsonSerializable(explicitToJson: true)
class Departament { // Кафедра
  Departament({this.name, this.courses});

  String name; // ИБМ1
  List<Course> courses;

  factory Departament.fromJson(Map<String, dynamic> json) => _$DepartamentFromJson(json);

  Map<String, dynamic> toJson() => _$DepartamentToJson(this);
}