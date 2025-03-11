// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardUserModel _$LeaderboardUserModelFromJson(Map<String, dynamic> json) {
  return _LeaderboardUserModel.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardUserModel {
  int get id => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardUserModelCopyWith<LeaderboardUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardUserModelCopyWith<$Res> {
  factory $LeaderboardUserModelCopyWith(LeaderboardUserModel value,
          $Res Function(LeaderboardUserModel) then) =
      _$LeaderboardUserModelCopyWithImpl<$Res, LeaderboardUserModel>;
  @useResult
  $Res call(
      {int id,
      int rating,
      int place,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? avatar});
}

/// @nodoc
class _$LeaderboardUserModelCopyWithImpl<$Res,
        $Val extends LeaderboardUserModel>
    implements $LeaderboardUserModelCopyWith<$Res> {
  _$LeaderboardUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? place = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardUserModelImplCopyWith<$Res>
    implements $LeaderboardUserModelCopyWith<$Res> {
  factory _$$LeaderboardUserModelImplCopyWith(_$LeaderboardUserModelImpl value,
          $Res Function(_$LeaderboardUserModelImpl) then) =
      __$$LeaderboardUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int rating,
      int place,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? avatar});
}

/// @nodoc
class __$$LeaderboardUserModelImplCopyWithImpl<$Res>
    extends _$LeaderboardUserModelCopyWithImpl<$Res, _$LeaderboardUserModelImpl>
    implements _$$LeaderboardUserModelImplCopyWith<$Res> {
  __$$LeaderboardUserModelImplCopyWithImpl(_$LeaderboardUserModelImpl _value,
      $Res Function(_$LeaderboardUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? place = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
  }) {
    return _then(_$LeaderboardUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardUserModelImpl implements _LeaderboardUserModel {
  const _$LeaderboardUserModelImpl(
      {required this.id,
      required this.rating,
      required this.place,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.avatar});

  factory _$LeaderboardUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardUserModelImplFromJson(json);

  @override
  final int id;
  @override
  final int rating;
  @override
  final int place;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'LeaderboardUserModel(id: $id, rating: $rating, place: $place, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rating, place, firstName, lastName, avatar);

  /// Create a copy of LeaderboardUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardUserModelImplCopyWith<_$LeaderboardUserModelImpl>
      get copyWith =>
          __$$LeaderboardUserModelImplCopyWithImpl<_$LeaderboardUserModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardUserModelImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardUserModel implements LeaderboardUserModel {
  const factory _LeaderboardUserModel(
      {required final int id,
      required final int rating,
      required final int place,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String? avatar}) = _$LeaderboardUserModelImpl;

  factory _LeaderboardUserModel.fromJson(Map<String, dynamic> json) =
      _$LeaderboardUserModelImpl.fromJson;

  @override
  int get id;
  @override
  int get rating;
  @override
  int get place;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String? get avatar;

  /// Create a copy of LeaderboardUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardUserModelImplCopyWith<_$LeaderboardUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
