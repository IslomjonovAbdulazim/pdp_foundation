import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required int pk,
    required String title,
    String? icon,
    required String description,
    @Default(0) int percent,
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}
