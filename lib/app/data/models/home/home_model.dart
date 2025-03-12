import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required String firstName,
    required String lastName,
    required int rating,
    required int place,
    required int streak,
    String? avatar,
    required List<Challenge> challenges,
    required List<DateTime> heatmap,
    required List<DateTime> activeDates,
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
    required String createdAt,
    required bool done,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}