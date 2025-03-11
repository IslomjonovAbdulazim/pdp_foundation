// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardUserModelImpl _$$LeaderboardUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardUserModelImpl(
      id: (json['id'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      place: (json['place'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$LeaderboardUserModelImplToJson(
        _$LeaderboardUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'place': instance.place,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
