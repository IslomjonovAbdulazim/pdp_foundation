import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required int rating,
    required int place,
    required int streak,
    String? avatar,
    required List<Challenge> challenges,
    required List<HeatmapPoint> heatmap,
    @JsonKey(name: "active_dates") required List<DateTime> activeDates,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    required int id,
    required String title,
    required String description,
    required int rating,
    @JsonKey(name: "created_at") required DateTime createdAt,
    required bool done,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}

@freezed
class HeatmapPoint with _$HeatmapPoint {
  const factory HeatmapPoint({
    required DateTime date,
    required int point,
    int? level,
  }) = _HeatmapPoint;

  factory HeatmapPoint.fromJson(Map<String, dynamic> json) =>
      _$HeatmapPointFromJson(json);
}
