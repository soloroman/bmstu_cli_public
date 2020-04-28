// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Departament _$DepartamentFromJson(Map<String, dynamic> json) {
  return Departament(
    name: json['name'] as String,
    courses: (json['courses'] as List)
        ?.map((e) =>
            e == null ? null : Course.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DepartamentToJson(Departament instance) =>
    <String, dynamic>{
      'name': instance.name,
      'courses': instance.courses?.map((e) => e?.toJson())?.toList(),
    };
