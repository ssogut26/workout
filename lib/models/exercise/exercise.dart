import 'package:json_annotation/json_annotation.dart';
import 'package:workout/models/excersize/category.dart';
import 'package:workout/models/excersize/comment.dart';
import 'package:workout/models/excersize/image.dart';
import 'package:workout/models/excersize/language.dart';
import 'package:workout/models/excersize/muscle.dart';

part 'exercise.g.dart';

@JsonSerializable()
class ExerciseInfo {
  int? count;
  String? next;
  dynamic previous;
  List<ExerciseInfoResult>? results;

  ExerciseInfo({this.count, this.next, this.previous, this.results});

  factory ExerciseInfo.fromJson(Map<String, dynamic> json) =>
      _$ExerciseInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseInfoToJson(this);
}

@JsonSerializable()
class ExerciseInfoResult {
  int? id;
  String? name;
  String? uuid;
  int? exerciseBaseId;
  String? description;
  String? creationDate;
  Category? category;
  List<Muscle>? muscles;
  List<Muscle>? muscles_secondary;
  List? equipment;
  Language? language;
  List<Images>? images;
  List? videos;
  List<Comment>? comments;
  List<int>? variations;

  ExerciseInfoResult(
      {this.id,
      this.name,
      this.uuid,
      this.exerciseBaseId,
      this.description,
      this.creationDate,
      this.category,
      this.muscles,
      this.muscles_secondary,
      this.equipment,
      this.language,
      this.images,
      this.videos,
      this.comments,
      this.variations});

  factory ExerciseInfoResult.fromJson(Map<String, dynamic> json) =>
      _$ExerciseInfoResultFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseInfoResultToJson(this);
}
