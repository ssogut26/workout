// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CommentResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

CommentResult _$CommentResultFromJson(Map<String, dynamic> json) =>
    CommentResult(
      id: json['id'] as int?,
      exercise: json['exercise'] as int?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$CommentResultToJson(CommentResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise': instance.exercise,
      'comment': instance.comment,
    };
