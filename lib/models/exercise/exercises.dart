import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exercises.g.dart';

@JsonSerializable()
class Exercises extends Equatable {
  const Exercises({
    required this.name,
    required this.type,
    required this.muscle,
    required this.equipment,
    required this.difficulty,
    required this.instructions,
  });

  factory Exercises.fromJson(Map<String, dynamic> json) => _$ExercisesFromJson(json);

  Map<String, dynamic> toJson() => _$ExercisesToJson(this);
  final String? name;
  final String? type;
  final String? muscle;
  final String? equipment;
  final String? difficulty;
  final String? instructions;

  @override
  List<String?> get props => [name, type, muscle, equipment, difficulty, instructions];
}
