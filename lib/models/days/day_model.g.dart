// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Days _$DaysFromJson(Map<String, dynamic> json) => Days(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DayResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DaysToJson(Days instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

DayResult _$DayResultFromJson(Map<String, dynamic> json) => DayResult(
      dayOfWeek: json['dayOfWeek'] as String?,
    );

Map<String, dynamic> _$DayResultToJson(DayResult instance) => <String, dynamic>{
      'dayOfWeek': instance.dayOfWeek,
    };
