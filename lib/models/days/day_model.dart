import 'package:json_annotation/json_annotation.dart';

part 'day_model.g.dart';

@JsonSerializable()
class Days {
  int? count;
  String? next;
  String? previous;
  List<DayResult>? results;

  Days({this.count, this.next, this.previous, this.results});

  factory Days.fromJson(Map<String, dynamic> json) {
    return _$DaysFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DaysToJson(this);
}

@JsonSerializable()
class DayResult {
  String? dayOfWeek;

  DayResult({this.dayOfWeek});

  factory DayResult.fromJson(Map<String, dynamic> json) => _$DayResultFromJson(json);

  Map<String, dynamic> toJson() => _$DayResultToJson(this);
}
