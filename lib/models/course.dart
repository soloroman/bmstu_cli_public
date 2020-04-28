import 'package:json_annotation/json_annotation.dart';
import 'package:test_app/models/group.dart';
part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Course {
  Course({this.course, this.groups});

  String course; // 1 курс
  List<Group> groups;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}