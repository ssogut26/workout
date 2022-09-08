import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bodyPart.g.dart';

@JsonSerializable()
class BodyPart extends Equatable {
  const BodyPart({
    required this.back,
    required this.cardio,
    required this.chest,
    required this.neck,
    required this.shoulders,
    required this.waist,
    required this.lowerArms,
    required this.lowerLegs,
    required this.upperArms,
    required this.upperLegs,
  });
  factory BodyPart.fromJson(Map<String, dynamic> json) => _$BodyPartFromJson(json);

  Map<String, dynamic> toJson() => _$BodyPartToJson(this);
  final String? back;
  final String? cardio;
  final String? chest;
  final String? neck;
  final String? shoulders;
  final String? waist;
  final String? lowerArms;
  final String? lowerLegs;
  final String? upperArms;
  final String? upperLegs;
  @override
  List<String?> get props => [
        back,
      ];
}
