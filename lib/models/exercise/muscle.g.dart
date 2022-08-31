// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Muscle _$MuscleFromJson(Map<String, dynamic> json) => Muscle(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MuscleResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuscleToJson(Muscle instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

MuscleResult _$MuscleResultFromJson(Map<String, dynamic> json) => MuscleResult(
      id: json['id'] as int?,
      name: json['name'] as String?,
      nameEn: json['nameEn'] as String?,
      isFront: json['isFront'] as bool?,
      imageUrlMain: json['imageUrlMain'] as String?,
      imageUrlSecondary: json['imageUrlSecondary'] as String?,
    );

Map<String, dynamic> _$MuscleResultToJson(MuscleResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameEn': instance.nameEn,
      'isFront': instance.isFront,
      'imageUrlMain': instance.imageUrlMain,
      'imageUrlSecondary': instance.imageUrlSecondary,
    };
