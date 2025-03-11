// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicModelImpl _$$TopicModelImplFromJson(Map<String, dynamic> json) =>
    _$TopicModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      documentId: (json['document_id'] as num).toInt(),
      videoUrl: json['video_url'] as String,
      progress: (json['progress'] as num?)?.toInt() ?? 0,
      passed: json['passed'] as bool,
    );

Map<String, dynamic> _$$TopicModelImplToJson(_$TopicModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'document_id': instance.documentId,
      'video_url': instance.videoUrl,
      'progress': instance.progress,
      'passed': instance.passed,
    };
