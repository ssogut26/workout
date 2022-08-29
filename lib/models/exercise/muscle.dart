import 'package:json_annotation/json_annotation.dart';

part 'muscle.g.dart';

@JsonSerializable()
class Muscle {
  int? count;
  String? next;
  String? previous;
  List<MuscleResult>? results;

  Muscle({this.count, this.next, this.previous, this.results});

  factory Muscle.fromJson(Map<String, dynamic> json) => _$MuscleFromJson(json);

  Map<String, dynamic> toJson() => _$MuscleToJson(this);
}

@JsonSerializable()
class MuscleResult {
  int? id;
  String? name;
  String? nameEn;
  bool? isFront;
  String? imageUrlMain;
  String? imageUrlSecondary;

  MuscleResult(
      {this.id,
      this.name,
      this.nameEn,
      this.isFront,
      this.imageUrlMain,
      this.imageUrlSecondary});

  factory MuscleResult.fromJson(Map<String, dynamic> json) =>
      _$MuscleResultFromJson(json);

  Map<String, dynamic> toJson() => _$MuscleResultToJson(this);
}
