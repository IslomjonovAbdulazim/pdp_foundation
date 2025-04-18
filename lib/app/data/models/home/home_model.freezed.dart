// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  List<Challenge> get challenges => throw _privateConstructorUsedError;
  List<HeatmapPoint> get heatmap => throw _privateConstructorUsedError;
  @JsonKey(name: "active_dates")
  List<DateTime> get activeDates => throw _privateConstructorUsedError;

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      int rating,
      int place,
      int streak,
      String? avatar,
      List<Challenge> challenges,
      List<HeatmapPoint> heatmap,
      @JsonKey(name: "active_dates") List<DateTime> activeDates});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? rating = null,
    Object? place = null,
    Object? streak = null,
    Object? avatar = freezed,
    Object? challenges = null,
    Object? heatmap = null,
    Object? activeDates = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      heatmap: null == heatmap
          ? _value.heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as List<HeatmapPoint>,
      activeDates: null == activeDates
          ? _value.activeDates
          : activeDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      int rating,
      int place,
      int streak,
      String? avatar,
      List<Challenge> challenges,
      List<HeatmapPoint> heatmap,
      @JsonKey(name: "active_dates") List<DateTime> activeDates});
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? rating = null,
    Object? place = null,
    Object? streak = null,
    Object? avatar = freezed,
    Object? challenges = null,
    Object? heatmap = null,
    Object? activeDates = null,
  }) {
    return _then(_$HomeModelImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      heatmap: null == heatmap
          ? _value._heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as List<HeatmapPoint>,
      activeDates: null == activeDates
          ? _value._activeDates
          : activeDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      required this.rating,
      required this.place,
      required this.streak,
      this.avatar,
      required final List<Challenge> challenges,
      required final List<HeatmapPoint> heatmap,
      @JsonKey(name: "active_dates") required final List<DateTime> activeDates})
      : _challenges = challenges,
        _heatmap = heatmap,
        _activeDates = activeDates;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  final int rating;
  @override
  final int place;
  @override
  final int streak;
  @override
  final String? avatar;
  final List<Challenge> _challenges;
  @override
  List<Challenge> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  final List<HeatmapPoint> _heatmap;
  @override
  List<HeatmapPoint> get heatmap {
    if (_heatmap is EqualUnmodifiableListView) return _heatmap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heatmap);
  }

  final List<DateTime> _activeDates;
  @override
  @JsonKey(name: "active_dates")
  List<DateTime> get activeDates {
    if (_activeDates is EqualUnmodifiableListView) return _activeDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeDates);
  }

  @override
  String toString() {
    return 'HomeModel(firstName: $firstName, lastName: $lastName, rating: $rating, place: $place, streak: $streak, avatar: $avatar, challenges: $challenges, heatmap: $heatmap, activeDates: $activeDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            const DeepCollectionEquality().equals(other._heatmap, _heatmap) &&
            const DeepCollectionEquality()
                .equals(other._activeDates, _activeDates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      rating,
      place,
      streak,
      avatar,
      const DeepCollectionEquality().hash(_challenges),
      const DeepCollectionEquality().hash(_heatmap),
      const DeepCollectionEquality().hash(_activeDates));

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "last_name") required final String lastName,
      required final int rating,
      required final int place,
      required final int streak,
      final String? avatar,
      required final List<Challenge> challenges,
      required final List<HeatmapPoint> heatmap,
      @JsonKey(name: "active_dates")
      required final List<DateTime> activeDates}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  int get rating;
  @override
  int get place;
  @override
  int get streak;
  @override
  String? get avatar;
  @override
  List<Challenge> get challenges;
  @override
  List<HeatmapPoint> get heatmap;
  @override
  @JsonKey(name: "active_dates")
  List<DateTime> get activeDates;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
mixin _$Challenge {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  /// Serializes this Challenge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res, Challenge>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int rating,
      @JsonKey(name: "created_at") DateTime createdAt,
      bool done});
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res, $Val extends Challenge>
    implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeImplCopyWith<$Res>
    implements $ChallengeCopyWith<$Res> {
  factory _$$ChallengeImplCopyWith(
          _$ChallengeImpl value, $Res Function(_$ChallengeImpl) then) =
      __$$ChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int rating,
      @JsonKey(name: "created_at") DateTime createdAt,
      bool done});
}

/// @nodoc
class __$$ChallengeImplCopyWithImpl<$Res>
    extends _$ChallengeCopyWithImpl<$Res, _$ChallengeImpl>
    implements _$$ChallengeImplCopyWith<$Res> {
  __$$ChallengeImplCopyWithImpl(
      _$ChallengeImpl _value, $Res Function(_$ChallengeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? done = null,
  }) {
    return _then(_$ChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.rating,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.done});

  factory _$ChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int rating;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  final bool done;

  @override
  String toString() {
    return 'Challenge(id: $id, title: $title, description: $description, rating: $rating, createdAt: $createdAt, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, rating, createdAt, done);

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      __$$ChallengeImplCopyWithImpl<_$ChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeImplToJson(
      this,
    );
  }
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      {required final int id,
      required final String title,
      required final String description,
      required final int rating,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      required final bool done}) = _$ChallengeImpl;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$ChallengeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get rating;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  bool get done;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapPoint _$HeatmapPointFromJson(Map<String, dynamic> json) {
  return _HeatmapPoint.fromJson(json);
}

/// @nodoc
mixin _$HeatmapPoint {
  DateTime get date => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;

  /// Serializes this HeatmapPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapPointCopyWith<HeatmapPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapPointCopyWith<$Res> {
  factory $HeatmapPointCopyWith(
          HeatmapPoint value, $Res Function(HeatmapPoint) then) =
      _$HeatmapPointCopyWithImpl<$Res, HeatmapPoint>;
  @useResult
  $Res call({DateTime date, int point, int? level});
}

/// @nodoc
class _$HeatmapPointCopyWithImpl<$Res, $Val extends HeatmapPoint>
    implements $HeatmapPointCopyWith<$Res> {
  _$HeatmapPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? point = null,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatmapPointImplCopyWith<$Res>
    implements $HeatmapPointCopyWith<$Res> {
  factory _$$HeatmapPointImplCopyWith(
          _$HeatmapPointImpl value, $Res Function(_$HeatmapPointImpl) then) =
      __$$HeatmapPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int point, int? level});
}

/// @nodoc
class __$$HeatmapPointImplCopyWithImpl<$Res>
    extends _$HeatmapPointCopyWithImpl<$Res, _$HeatmapPointImpl>
    implements _$$HeatmapPointImplCopyWith<$Res> {
  __$$HeatmapPointImplCopyWithImpl(
      _$HeatmapPointImpl _value, $Res Function(_$HeatmapPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? point = null,
    Object? level = freezed,
  }) {
    return _then(_$HeatmapPointImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapPointImpl implements _HeatmapPoint {
  const _$HeatmapPointImpl(
      {required this.date, required this.point, this.level});

  factory _$HeatmapPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapPointImplFromJson(json);

  @override
  final DateTime date;
  @override
  final int point;
  @override
  final int? level;

  @override
  String toString() {
    return 'HeatmapPoint(date: $date, point: $point, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, point, level);

  /// Create a copy of HeatmapPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapPointImplCopyWith<_$HeatmapPointImpl> get copyWith =>
      __$$HeatmapPointImplCopyWithImpl<_$HeatmapPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapPointImplToJson(
      this,
    );
  }
}

abstract class _HeatmapPoint implements HeatmapPoint {
  const factory _HeatmapPoint(
      {required final DateTime date,
      required final int point,
      final int? level}) = _$HeatmapPointImpl;

  factory _HeatmapPoint.fromJson(Map<String, dynamic> json) =
      _$HeatmapPointImpl.fromJson;

  @override
  DateTime get date;
  @override
  int get point;
  @override
  int? get level;

  /// Create a copy of HeatmapPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapPointImplCopyWith<_$HeatmapPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
