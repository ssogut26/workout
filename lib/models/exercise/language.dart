import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
  int? count;
  String? next;
  String? previous;
  List<LanguageResult>? results;

  Language({this.count, this.next, this.previous, this.results});

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

@JsonSerializable()
class LanguageResult {
  int? id;
  String? shortName;
  String? fullName;

  LanguageResult({this.id, this.shortName, this.fullName});

  factory LanguageResult.fromJson(Map<String, dynamic> json) =>
      _$LanguageResultFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageResultToJson(this);
}
