import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/leaderboard/leaderboard_user_entity.dart';

part 'leaderboard_user_model.freezed.dart';

part 'leaderboard_user_model.g.dart';

@freezed
class LeaderboardUserModel with _$LeaderboardUserModel {
  const factory LeaderboardUserModel({
    required int id,
    required int rating,
    required int place,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? avatar,
  }) = _LeaderboardUserModel;

  factory LeaderboardUserModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserModelFromJson(json);
}

extension LeaderboardUserModelX on LeaderboardUserModel {
  String get fullName => "$firstName $lastName";

  LeaderboardUserEntity toEntity() =>
      LeaderboardUserEntity(
        userID: id,
        points: rating,
        rank: place,
        image: avatar ?? "",
        fullname: fullName,);
}
