// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizResultResponseModel _$QuizResultResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuizResultResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuizResultResponseModel {
  @JsonKey(name: "earned_points")
  double get earnedPoints => throw _privateConstructorUsedError;

  /// Serializes this QuizResultResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizResultResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizResultResponseModelCopyWith<QuizResultResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultResponseModelCopyWith<$Res> {
  factory $QuizResultResponseModelCopyWith(QuizResultResponseModel value,
          $Res Function(QuizResultResponseModel) then) =
      _$QuizResultResponseModelCopyWithImpl<$Res, QuizResultResponseModel>;
  @useResult
  $Res call({@JsonKey(name: "earned_points") double earnedPoints});
}

/// @nodoc
class _$QuizResultResponseModelCopyWithImpl<$Res,
        $Val extends QuizResultResponseModel>
    implements $QuizResultResponseModelCopyWith<$Res> {
  _$QuizResultResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizResultResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnedPoints = null,
  }) {
    return _then(_value.copyWith(
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResultResponseModelImplCopyWith<$Res>
    implements $QuizResultResponseModelCopyWith<$Res> {
  factory _$$QuizResultResponseModelImplCopyWith(
          _$QuizResultResponseModelImpl value,
          $Res Function(_$QuizResultResponseModelImpl) then) =
      __$$QuizResultResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "earned_points") double earnedPoints});
}

/// @nodoc
class __$$QuizResultResponseModelImplCopyWithImpl<$Res>
    extends _$QuizResultResponseModelCopyWithImpl<$Res,
        _$QuizResultResponseModelImpl>
    implements _$$QuizResultResponseModelImplCopyWith<$Res> {
  __$$QuizResultResponseModelImplCopyWithImpl(
      _$QuizResultResponseModelImpl _value,
      $Res Function(_$QuizResultResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizResultResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnedPoints = null,
  }) {
    return _then(_$QuizResultResponseModelImpl(
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizResultResponseModelImpl implements _QuizResultResponseModel {
  const _$QuizResultResponseModelImpl(
      {@JsonKey(name: "earned_points") required this.earnedPoints});

  factory _$QuizResultResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResultResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "earned_points")
  final double earnedPoints;

  @override
  String toString() {
    return 'QuizResultResponseModel(earnedPoints: $earnedPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResultResponseModelImpl &&
            (identical(other.earnedPoints, earnedPoints) ||
                other.earnedPoints == earnedPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, earnedPoints);

  /// Create a copy of QuizResultResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultResponseModelImplCopyWith<_$QuizResultResponseModelImpl>
      get copyWith => __$$QuizResultResponseModelImplCopyWithImpl<
          _$QuizResultResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResultResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuizResultResponseModel implements QuizResultResponseModel {
  const factory _QuizResultResponseModel(
      {@JsonKey(name: "earned_points")
      required final double earnedPoints}) = _$QuizResultResponseModelImpl;

  factory _QuizResultResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuizResultResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "earned_points")
  double get earnedPoints;

  /// Create a copy of QuizResultResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizResultResponseModelImplCopyWith<_$QuizResultResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
