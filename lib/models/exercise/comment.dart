import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  int? count;
  String? next;
  String? previous;
  List<CommentResult>? results;

  Comment({this.count, this.next, this.previous, this.results});

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class CommentResult {
  int? id;
  int? exercise;
  String? comment;

  CommentResult({this.id, this.exercise, this.comment});

  factory CommentResult.fromJson(Map<String, dynamic> json) =>
      _$CommentResultFromJson(json);

  Map<String, dynamic> toJson() => _$CommentResultToJson(this);
}
