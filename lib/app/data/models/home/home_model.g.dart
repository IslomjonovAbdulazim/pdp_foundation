// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      rating: (json['rating'] as num).toInt(),
      place: (json['place'] as num).toInt(),
      streak: (json['streak'] as num).toInt(),
      avatar: json['avatar'] as String?,
      challenges: (json['challenges'] as List<dynamic>)
          .map((e) => Challenge.fromJson(e as Map<String, dynamic>))
          .toList(),
      heatmap: (json['heatmap'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      activeDates: (json['active_dates'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'rating': instance.rating,
      'place': instance.place,
      'streak': instance.streak,
      'avatar': instance.avatar,
      'challenges': instance.challenges,
      'heatmap': instance.heatmap.map((e) => e.toIso8601String()).toList(),
      'active_dates':
          instance.activeDates.map((e) => e.toIso8601String()).toList(),
    };

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'created_at': instance.createdAt.toIso8601String(),
      'done': instance.done,
    };
