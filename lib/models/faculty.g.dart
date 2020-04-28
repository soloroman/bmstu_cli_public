// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Faculty _$FacultyFromJson(Map<String, dynamic> json) {
  return Faculty(
    shortName: json['shortName'] as String,
    fullName: json['fullName'] as String,
    departaments: (json['departaments'] as List)
        ?.map((e) =>
            e == null ? null : Departament.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FacultyToJson(Faculty instance) => <String, dynamic>{
      'shortName': instance.shortName,
      'fullName': instance.fullName,
      'departaments': instance.departaments?.map((e) => e?.toJson())?.toList(),
    };
