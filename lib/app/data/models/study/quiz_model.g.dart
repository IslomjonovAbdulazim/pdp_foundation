// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      id: (json['id'] as num).toInt(),
      question: json['question'] as String,
      codeSnippet: json['code_snippet'] as String,
      language: json['language'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correct: json['correct'] as String,
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'code_snippet': instance.codeSnippet,
      'language': instance.language,
      'options': instance.options,
      'correct': instance.correct,
    };
