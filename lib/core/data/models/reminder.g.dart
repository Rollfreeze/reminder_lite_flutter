// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderImpl _$$ReminderImplFromJson(Map<String, dynamic> json) =>
    _$ReminderImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      notes: json['notes'] as String,
      isDone: json['is_done'] as bool,
      repeatance:
          $enumDecode(_$RepeatanceOptionEnumMap, json['repeatance_code']),
      date:
          const DateTimeSerializer().fromJson((json['date'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$ReminderImplToJson(_$ReminderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'notes': instance.notes,
      'is_done': instance.isDone,
      'repeatance_code': _$RepeatanceOptionEnumMap[instance.repeatance]!,
      'date': const DateTimeSerializer().toJson(instance.date),
    };

const _$RepeatanceOptionEnumMap = {
  RepeatanceOption.never: 0,
  RepeatanceOption.daily: 1,
  RepeatanceOption.weekdays: 2,
  RepeatanceOption.weekends: 3,
  RepeatanceOption.weekly: 4,
  RepeatanceOption.fortnightly: 5,
  RepeatanceOption.monthly: 6,
  RepeatanceOption.every3Months: 7,
  RepeatanceOption.every6Months: 8,
  RepeatanceOption.yearly: 9,
};
