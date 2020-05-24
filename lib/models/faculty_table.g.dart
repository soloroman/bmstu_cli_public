// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacultyTable _$FacultyTableFromJson(Map<String, dynamic> json) {
  return FacultyTable(
    faculties: (json['faculties'] as List)
        ?.map((e) =>
            e == null ? null : Faculty.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FacultyTableToJson(FacultyTable instance) =>
    <String, dynamic>{
      'faculties': instance.faculties?.map((e) => e?.toJson())?.toList(),
    };
