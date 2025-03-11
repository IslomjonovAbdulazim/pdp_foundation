// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeModelImpl(
      pk: (json['pk'] as num).toInt(),
      title: json['title'] as String,
      icon: json['icon'] as String?,
      description: json['description'] as String,
      percent: (json['percent'] as num?)?.toInt() ?? 0,
      passed: json['passed'] as bool,
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'title': instance.title,
      'icon': instance.icon,
      'description': instance.description,
      'percent': instance.percent,
      'passed': instance.passed,
    };
