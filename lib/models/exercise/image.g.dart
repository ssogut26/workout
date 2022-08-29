// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ImageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

ImageResult _$ImageResultFromJson(Map<String, dynamic> json) => ImageResult(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      exerciseBase: json['exerciseBase'] as int?,
      image: json['image'] as String?,
      isMain: json['isMain'] as bool?,
      status: json['status'] as String?,
      style: json['style'] as String?,
    );

Map<String, dynamic> _$ImageResultToJson(ImageResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'exerciseBase': instance.exerciseBase,
      'image': instance.image,
      'isMain': instance.isMain,
      'status': instance.status,
      'style': instance.style,
    };
