// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercises _$ExercisesFromJson(Map<String, dynamic> json) => Exercises(
      bodyPart: json['bodyPart'] as String?,
      equipment: json['equipment'] as String?,
      gifUrl: json['gifUrl'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      target: json['target'] as String?,
    );

Map<String, dynamic> _$ExercisesToJson(Exercises instance) => <String, dynamic>{
      'bodyPart': instance.bodyPart,
      'equipment': instance.equipment,
      'gifUrl': instance.gifUrl,
      'id': instance.id,
      'name': instance.name,
      'target': instance.target,
    };
