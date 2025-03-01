import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_model.freezed.dart';
part 'topic_model.g.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required int id,
    required String title,
    String? icon,
    required String description,
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}

@freezed
class TopicModel with _$TopicModel {
  const factory TopicModel({
    required int id,
    required String title,
    required String description,
    required int documentId,
    required String videoUrl,
    @Default(0) int progress,
    required ThemeModel theme,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
}
