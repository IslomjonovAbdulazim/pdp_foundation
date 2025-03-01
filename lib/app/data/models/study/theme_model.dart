import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/themes_entity.dart';

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

extension ThemeModelX on ThemeModel {
  ThemeEntity toEntity() => ThemeEntity(
        id: pk,
        name: title,
        description: description,
        progress: percent,
        number: pk,
      );
}
