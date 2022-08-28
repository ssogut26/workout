// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    ExerciseModel(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ExerciseResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

ExerciseResult _$ExerciseResultFromJson(Map<String, dynamic> json) =>
    ExerciseResult(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      exerciseBase: json['exerciseBase'] as int?,
      description: json['description'] as String?,
      creationDate: json['creationDate'] as String?,
      category: json['category'] as int?,
      muscles:
          (json['muscles'] as List<dynamic>?)?.map((e) => e as int).toList(),
      musclesSecondary: (json['musclesSecondary'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      equipment:
          (json['equipment'] as List<dynamic>?)?.map((e) => e as int).toList(),
      language: json['language'] as int?,
      license: json['license'] as int?,
      licenseAuthor: json['licenseAuthor'] as String?,
      variations:
          (json['variations'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ExerciseResultToJson(ExerciseResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'exerciseBase': instance.exerciseBase,
      'description': instance.description,
      'creationDate': instance.creationDate,
      'category': instance.category,
      'muscles': instance.muscles,
      'musclesSecondary': instance.musclesSecondary,
      'equipment': instance.equipment,
      'language': instance.language,
      'license': instance.license,
      'licenseAuthor': instance.licenseAuthor,
      'variations': instance.variations,
    };
