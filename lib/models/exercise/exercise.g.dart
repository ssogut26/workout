// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseInfo _$ExerciseInfoFromJson(Map<String, dynamic> json) => ExerciseInfo(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ExerciseInfoResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExerciseInfoToJson(ExerciseInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

ExerciseInfoResult _$ExerciseInfoResultFromJson(Map<String, dynamic> json) =>
    ExerciseInfoResult(
      id: json['id'] as int?,
      name: json['name'] as String?,
      uuid: json['uuid'] as String?,
      exerciseBaseId: json['exerciseBaseId'] as int?,
      description: json['description'] as String?,
      creationDate: json['creationDate'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      muscles: (json['muscles'] as List<dynamic>?)
          ?.map((e) => Muscle.fromJson(e as Map<String, dynamic>))
          .toList(),
      muscles_secondary: (json['muscles_secondary'] as List<dynamic>?)
          ?.map((e) => Muscle.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipment: json['equipment'] as List<dynamic>?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: json['videos'] as List<dynamic>?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations:
          (json['variations'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ExerciseInfoResultToJson(ExerciseInfoResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uuid': instance.uuid,
      'exerciseBaseId': instance.exerciseBaseId,
      'description': instance.description,
      'creationDate': instance.creationDate,
      'category': instance.category,
      'muscles': instance.muscles,
      'muscles_secondary': instance.muscles_secondary,
      'equipment': instance.equipment,
      'language': instance.language,
      'images': instance.images,
      'videos': instance.videos,
      'comments': instance.comments,
      'variations': instance.variations,
    };
