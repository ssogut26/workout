// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercise _$ExerciseFromJson(Map<String, dynamic> json) => Exercise(
      id: json['id'] as int,
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      description: json['description'] as String,
      creationDate: json['creation_date'] as String,
      category: json['category'] as int,
      muscles: (json['muscles'] as List<dynamic>).map((e) => e as int).toList(),
      musclesSecondary: (json['muscles_secondary'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as int).toList(),
      language: json['language'] as int,
      license: json['license'] as int,
      licenseAuthor: json['license_author'] as String,
      variations:
          (json['variations'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uuid': instance.uuid,
      'description': instance.description,
      'creation_date': instance.creationDate,
      'category': instance.category,
      'muscles': instance.muscles,
      'muscles_secondary': instance.musclesSecondary,
      'equipment': instance.equipment,
      'language': instance.language,
      'license': instance.license,
      'license_author': instance.licenseAuthor,
      'variations': instance.variations,
    };
