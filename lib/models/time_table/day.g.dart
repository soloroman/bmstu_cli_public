// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Day _$DayFromJson(Map<String, dynamic> json) {
  return Day(
    timeIntervals: (json['timeIntervals'] as List)
        ?.map((e) =>
            e == null ? null : Subject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    day: json['day'] as String,
  );
}

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'day': instance.day,
      'timeIntervals':
          instance.timeIntervals?.map((e) => e?.toJson())?.toList(),
    };
