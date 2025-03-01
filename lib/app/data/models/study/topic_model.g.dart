// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      icon: json['icon'] as String?,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
      'description': instance.description,
    };

_$TopicModelImpl _$$TopicModelImplFromJson(Map<String, dynamic> json) =>
    _$TopicModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      documentId: (json['documentId'] as num).toInt(),
      videoUrl: json['videoUrl'] as String,
      progress: (json['progress'] as num?)?.toInt() ?? 0,
      theme: ThemeModel.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopicModelImplToJson(_$TopicModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'documentId': instance.documentId,
      'videoUrl': instance.videoUrl,
      'progress': instance.progress,
      'theme': instance.theme,
    };
