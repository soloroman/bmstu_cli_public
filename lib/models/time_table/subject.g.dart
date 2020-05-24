// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return Subject(
    denominator: json['denominator'] as String,
    numerator: json['numerator'] as String,
    timeInterval: json['timeInterval'] as String,
  );
}

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'timeInterval': instance.timeInterval,
      'denominator': instance.denominator,
      'numerator': instance.numerator,
    };
