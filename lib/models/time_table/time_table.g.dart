// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTable _$TimeTableFromJson(Map<String, dynamic> json) {
  return TimeTable(
    days: (json['days'] as List)
        ?.map((e) => e == null ? null : Day.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TimeTableToJson(TimeTable instance) => <String, dynamic>{
      'days': instance.days?.map((e) => e?.toJson())?.toList(),
    };
