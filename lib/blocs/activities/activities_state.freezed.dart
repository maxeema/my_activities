// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivitiesStateTearOff {
  const _$ActivitiesStateTearOff();

  _ActivitiesState call(
      {required Set<Activity> data,
      required bool loading,
      Set<Activity>? addingQueue,
      Set<Activity>? updatingQueue,
      Set<Activity>? removingQueue,
      Consumable<dynamic>? error}) {
    return _ActivitiesState(
      data: data,
      loading: loading,
      addingQueue: addingQueue,
      updatingQueue: updatingQueue,
      removingQueue: removingQueue,
      error: error,
    );
  }
}

/// @nodoc
const $ActivitiesState = _$ActivitiesStateTearOff();

/// @nodoc
mixin _$ActivitiesState {
  Set<Activity> get data => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Set<Activity>? get addingQueue => throw _privateConstructorUsedError;
  Set<Activity>? get updatingQueue => throw _privateConstructorUsedError;
  Set<Activity>? get removingQueue => throw _privateConstructorUsedError;
  Consumable<dynamic>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivitiesStateCopyWith<ActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesStateCopyWith(
          ActivitiesState value, $Res Function(ActivitiesState) then) =
      _$ActivitiesStateCopyWithImpl<$Res>;
  $Res call(
      {Set<Activity> data,
      bool loading,
      Set<Activity>? addingQueue,
      Set<Activity>? updatingQueue,
      Set<Activity>? removingQueue,
      Consumable<dynamic>? error});
}

/// @nodoc
class _$ActivitiesStateCopyWithImpl<$Res>
    implements $ActivitiesStateCopyWith<$Res> {
  _$ActivitiesStateCopyWithImpl(this._value, this._then);

  final ActivitiesState _value;
  // ignore: unused_field
  final $Res Function(ActivitiesState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? loading = freezed,
    Object? addingQueue = freezed,
    Object? updatingQueue = freezed,
    Object? removingQueue = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Set<Activity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      addingQueue: addingQueue == freezed
          ? _value.addingQueue
          : addingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      updatingQueue: updatingQueue == freezed
          ? _value.updatingQueue
          : updatingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      removingQueue: removingQueue == freezed
          ? _value.removingQueue
          : removingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Consumable<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ActivitiesStateCopyWith<$Res>
    implements $ActivitiesStateCopyWith<$Res> {
  factory _$ActivitiesStateCopyWith(_ActivitiesState value,
          $Res Function(_ActivitiesState) then) =
      __$ActivitiesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<Activity> data,
      bool loading,
      Set<Activity>? addingQueue,
      Set<Activity>? updatingQueue,
      Set<Activity>? removingQueue,
      Consumable<dynamic>? error});
}

/// @nodoc
class __$ActivitiesStateCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res>
    implements _$ActivitiesStateCopyWith<$Res> {
  __$ActivitiesStateCopyWithImpl(
      _ActivitiesState _value, $Res Function(_ActivitiesState) _then)
      : super(_value, (v) => _then(v as _ActivitiesState));

  @override
  _ActivitiesState get _value => super._value as _ActivitiesState;

  @override
  $Res call({
    Object? data = freezed,
    Object? loading = freezed,
    Object? addingQueue = freezed,
    Object? updatingQueue = freezed,
    Object? removingQueue = freezed,
    Object? error = freezed,
  }) {
    return _then(_ActivitiesState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Set<Activity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      addingQueue: addingQueue == freezed
          ? _value.addingQueue
          : addingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      updatingQueue: updatingQueue == freezed
          ? _value.updatingQueue
          : updatingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      removingQueue: removingQueue == freezed
          ? _value.removingQueue
          : removingQueue // ignore: cast_nullable_to_non_nullable
              as Set<Activity>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Consumable<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ActivitiesState
    with DiagnosticableTreeMixin
    implements _ActivitiesState {
  _$_ActivitiesState(
      {required this.data,
      required this.loading,
      this.addingQueue,
      this.updatingQueue,
      this.removingQueue,
      this.error});

  @override
  final Set<Activity> data;
  @override
  final bool loading;
  @override
  final Set<Activity>? addingQueue;
  @override
  final Set<Activity>? updatingQueue;
  @override
  final Set<Activity>? removingQueue;
  @override
  final Consumable<dynamic>? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivitiesState(data: $data, loading: $loading, addingQueue: $addingQueue, updatingQueue: $updatingQueue, removingQueue: $removingQueue, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActivitiesState'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('addingQueue', addingQueue))
      ..add(DiagnosticsProperty('updatingQueue', updatingQueue))
      ..add(DiagnosticsProperty('removingQueue', removingQueue))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivitiesState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other.addingQueue, addingQueue) &&
            const DeepCollectionEquality()
                .equals(other.updatingQueue, updatingQueue) &&
            const DeepCollectionEquality()
                .equals(other.removingQueue, removingQueue) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      loading,
      const DeepCollectionEquality().hash(addingQueue),
      const DeepCollectionEquality().hash(updatingQueue),
      const DeepCollectionEquality().hash(removingQueue),
      error);

  @JsonKey(ignore: true)
  @override
  _$ActivitiesStateCopyWith<_ActivitiesState> get copyWith =>
      __$ActivitiesStateCopyWithImpl<_ActivitiesState>(
          this, _$identity);
}

abstract class _ActivitiesState implements ActivitiesState {
  factory _ActivitiesState(
      {required Set<Activity> data,
      required bool loading,
      Set<Activity>? addingQueue,
      Set<Activity>? updatingQueue,
      Set<Activity>? removingQueue,
      Consumable<dynamic>? error}) = _$_ActivitiesState;

  @override
  Set<Activity> get data;
  @override
  bool get loading;
  @override
  Set<Activity>? get addingQueue;
  @override
  Set<Activity>? get updatingQueue;
  @override
  Set<Activity>? get removingQueue;
  @override
  Consumable<dynamic>? get error;
  @override
  @JsonKey(ignore: true)
  _$ActivitiesStateCopyWith<_ActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
