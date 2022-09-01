// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercises _$ExercisesFromJson(Map<String, dynamic> json) => Exercises(
      name: json['name'] as String?,
      type: json['type'] as String?,
      muscle: json['muscle'] as String?,
      equipment: json['equipment'] as String?,
      difficulty: json['difficulty'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$ExercisesToJson(Exercises instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'muscle': instance.muscle,
      'equipment': instance.equipment,
      'difficulty': instance.difficulty,
      'instructions': instance.instructions,
    };
