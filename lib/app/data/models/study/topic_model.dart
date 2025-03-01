import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/study/topic_entity.dart';

part 'topic_model.freezed.dart';
part 'topic_model.g.dart';

@freezed
class TopicModel with _$TopicModel {
  const factory TopicModel({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: "document_id") required int documentId,
    @JsonKey(name: "video_url") required String videoUrl,
    @Default(0) int progress,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
}

extension TopicModelX on TopicModel {
  TopicEntity toEntity() => TopicEntity(
        id: id,
        title: title,
        description: description,
        number: id,
        progress: progress,
        videoURL: videoUrl,
        documentID: documentId,
      );
}
