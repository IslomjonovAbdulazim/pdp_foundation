// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizResultModel _$QuizResultModelFromJson(Map<String, dynamic> json) {
  return _QuizResultModel.fromJson(json);
}

/// @nodoc
mixin _$QuizResultModel {
  @JsonKey(name: "topic_id")
  int get topicID => throw _privateConstructorUsedError;
  List<int> get corrects => throw _privateConstructorUsedError;
  List<int> get wrongs => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  /// Serializes this QuizResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizResultModelCopyWith<QuizResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultModelCopyWith<$Res> {
  factory $QuizResultModelCopyWith(
          QuizResultModel value, $Res Function(QuizResultModel) then) =
      _$QuizResultModelCopyWithImpl<$Res, QuizResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "topic_id") int topicID,
      List<int> corrects,
      List<int> wrongs,
      DateTime start,
      DateTime end});
}

/// @nodoc
class _$QuizResultModelCopyWithImpl<$Res, $Val extends QuizResultModel>
    implements $QuizResultModelCopyWith<$Res> {
  _$QuizResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicID = null,
    Object? corrects = null,
    Object? wrongs = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      topicID: null == topicID
          ? _value.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      corrects: null == corrects
          ? _value.corrects
          : corrects // ignore: cast_nullable_to_non_nullable
              as List<int>,
      wrongs: null == wrongs
          ? _value.wrongs
          : wrongs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResultModelImplCopyWith<$Res>
    implements $QuizResultModelCopyWith<$Res> {
  factory _$$QuizResultModelImplCopyWith(_$QuizResultModelImpl value,
          $Res Function(_$QuizResultModelImpl) then) =
      __$$QuizResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "topic_id") int topicID,
      List<int> corrects,
      List<int> wrongs,
      DateTime start,
      DateTime end});
}

/// @nodoc
class __$$QuizResultModelImplCopyWithImpl<$Res>
    extends _$QuizResultModelCopyWithImpl<$Res, _$QuizResultModelImpl>
    implements _$$QuizResultModelImplCopyWith<$Res> {
  __$$QuizResultModelImplCopyWithImpl(
      _$QuizResultModelImpl _value, $Res Function(_$QuizResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicID = null,
    Object? corrects = null,
    Object? wrongs = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$QuizResultModelImpl(
      topicID: null == topicID
          ? _value.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      corrects: null == corrects
          ? _value._corrects
          : corrects // ignore: cast_nullable_to_non_nullable
              as List<int>,
      wrongs: null == wrongs
          ? _value._wrongs
          : wrongs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizResultModelImpl implements _QuizResultModel {
  const _$QuizResultModelImpl(
      {@JsonKey(name: "topic_id") required this.topicID,
      required final List<int> corrects,
      required final List<int> wrongs,
      required this.start,
      required this.end})
      : _corrects = corrects,
        _wrongs = wrongs;

  factory _$QuizResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResultModelImplFromJson(json);

  @override
  @JsonKey(name: "topic_id")
  final int topicID;
  final List<int> _corrects;
  @override
  List<int> get corrects {
    if (_corrects is EqualUnmodifiableListView) return _corrects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_corrects);
  }

  final List<int> _wrongs;
  @override
  List<int> get wrongs {
    if (_wrongs is EqualUnmodifiableListView) return _wrongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wrongs);
  }

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'QuizResultModel(topicID: $topicID, corrects: $corrects, wrongs: $wrongs, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResultModelImpl &&
            (identical(other.topicID, topicID) || other.topicID == topicID) &&
            const DeepCollectionEquality().equals(other._corrects, _corrects) &&
            const DeepCollectionEquality().equals(other._wrongs, _wrongs) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      topicID,
      const DeepCollectionEquality().hash(_corrects),
      const DeepCollectionEquality().hash(_wrongs),
      start,
      end);

  /// Create a copy of QuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResultModelImplCopyWith<_$QuizResultModelImpl> get copyWith =>
      __$$QuizResultModelImplCopyWithImpl<_$QuizResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResultModelImplToJson(
      this,
    );
  }
}

abstract class _QuizResultModel implements QuizResultModel {
  const factory _QuizResultModel(
      {@JsonKey(name: "topic_id") required final int topicID,
      required final List<int> corrects,
      required final List<int> wrongs,
      required final DateTime start,
      required final DateTime end}) = _$QuizResultModelImpl;

  factory _QuizResultModel.fromJson(Map<String, dynamic> json) =
      _$QuizResultModelImpl.fromJson;

  @override
  @JsonKey(name: "topic_id")
  int get topicID;
  @override
  List<int> get corrects;
  @override
  List<int> get wrongs;
  @override
  DateTime get start;
  @override
  DateTime get end;

  /// Create a copy of QuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizResultModelImplCopyWith<_$QuizResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
