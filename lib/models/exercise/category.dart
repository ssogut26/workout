import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  int? count;
  String? next;
  String? previous;
  List<CategoryResult>? results;

  Category({this.count, this.next, this.previous, this.results});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class CategoryResult {
  int? id;
  String? name;

  CategoryResult({this.id, this.name});

  factory CategoryResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryResultFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResultToJson(this);
}
