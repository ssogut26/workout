import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exercises.g.dart';

@JsonSerializable()
class Exercises extends Equatable {
  const Exercises({
    required this.bodyPart,
    required this.equipment,
    required this.gifUrl,
    required this.id,
    required this.name,
    required this.target,
  });

  factory Exercises.fromJson(Map<String, dynamic> json) => _$ExercisesFromJson(json);

  Map<String, dynamic> toJson() => _$ExercisesToJson(this);
  final String? bodyPart;
  final String? equipment;
  final String? gifUrl;
  final String? id;
  final String? name;
  final String? target;

  @override
  List<String?> get props => [
        bodyPart,
        equipment,
        gifUrl,
        id,
        name,
        target,
      ];
}
