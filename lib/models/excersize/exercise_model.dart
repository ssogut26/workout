import 'package:json_annotation/json_annotation.dart';

part 'exercise_model.g.dart';

@JsonSerializable()
class ExerciseModel {
  int? count;
  String? next;
  dynamic previous;
  final List<ExerciseResult>? results;

  ExerciseModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);
}

@JsonSerializable()
class ExerciseResult {
  int? id;
  String? uuid;
  String? name;
  int? exerciseBase;
  String? description;
  String? creationDate;
  int? category;
  List<int>? muscles;
  List<int>? musclesSecondary;
  List<int>? equipment;
  int? language;
  int? license;
  String? licenseAuthor;
  List<int>? variations;

  ExerciseResult({
    this.id,
    this.uuid,
    this.name,
    this.exerciseBase,
    this.description,
    this.creationDate,
    this.category,
    this.muscles,
    this.musclesSecondary,
    this.equipment,
    this.language,
    this.license,
    this.licenseAuthor,
    this.variations,
  });
  factory ExerciseResult.fromJson(Map<String, dynamic> json) =>
      _$ExerciseResultFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseResultToJson(this);
}
