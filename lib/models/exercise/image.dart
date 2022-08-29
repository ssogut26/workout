import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Images {
  int? count;
  String? next;
  String? previous;
  List<ImageResult>? results;

  Images({this.count, this.next, this.previous, this.results});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class ImageResult {
  int? id;
  String? uuid;
  int? exerciseBase;
  String? image;
  bool? isMain;
  String? status;
  String? style;

  ImageResult(
      {this.id,
      this.uuid,
      this.exerciseBase,
      this.image,
      this.isMain,
      this.status,
      this.style});

  factory ImageResult.fromJson(Map<String, dynamic> json) => _$ImageResultFromJson(json);

  Map<String, dynamic> toJson() => _$ImageResultToJson(this);
}
