// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      rating: (json['rating'] as num).toInt(),
      place: (json['place'] as num).toInt(),
      streak: (json['streak'] as num).toInt(),
      avatar: json['avatar'] as String?,
      lastTheme: LastTheme.fromJson(json['lastTheme'] as Map<String, dynamic>),
      challenges: (json['challenges'] as List<dynamic>)
          .map((e) => Challenge.fromJson(e as Map<String, dynamic>))
          .toList(),
      heatmap:
          (json['heatmap'] as List<dynamic>).map((e) => e as String).toList(),
      activeDates: (json['activeDates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'rating': instance.rating,
      'place': instance.place,
      'streak': instance.streak,
      'avatar': instance.avatar,
      'lastTheme': instance.lastTheme,
      'challenges': instance.challenges,
      'heatmap': instance.heatmap,
      'activeDates': instance.activeDates,
    };

_$LastThemeImpl _$$LastThemeImplFromJson(Map<String, dynamic> json) =>
    _$LastThemeImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      percent: (json['percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$LastThemeImplToJson(_$LastThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'percent': instance.percent,
    };

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'createdAt': instance.createdAt,
      'done': instance.done,
    };
