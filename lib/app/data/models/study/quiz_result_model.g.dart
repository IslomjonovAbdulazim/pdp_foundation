// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResultModelImpl _$$QuizResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizResultModelImpl(
      topicID: (json['topic_id'] as num).toInt(),
      corrects: (json['corrects'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      wrongs: (json['wrongs'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$QuizResultModelImplToJson(
        _$QuizResultModelImpl instance) =>
    <String, dynamic>{
      'topic_id': instance.topicID,
      'corrects': instance.corrects,
      'wrongs': instance.wrongs,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
