// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) {
  return Course(
    number: json['number'] as String,
    groups: (json['groups'] as List)
        ?.map(
            (e) => e == null ? null : Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'number': instance.number,
      'groups': instance.groups?.map((e) => e?.toJson())?.toList(),
    };
