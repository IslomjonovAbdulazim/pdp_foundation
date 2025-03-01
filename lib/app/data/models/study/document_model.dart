import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/article_entity.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    required String type,
    required String data,
    String? keyword,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
}

extension DocumentModelX on DocumentModel {
  ArticleContentEntity toEntity() => ArticleContentEntity(
        type: ContentType.title, // todo fix
        data: data,
        keyword: keyword ?? "",
      );
}
