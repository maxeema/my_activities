// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_new_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivityNewStateTearOff {
  const _$ActivityNewStateTearOff();

  _ActivityNewState call(
      {required String title,
      required bool completionDateEnabled,
      DateTime? completionDate,
      String? description}) {
    return _ActivityNewState(
      title: title,
      completionDateEnabled: completionDateEnabled,
      completionDate: completionDate,
      description: description,
    );
  }
}

/// @nodoc
const $ActivityNewState = _$ActivityNewStateTearOff();

/// @nodoc
mixin _$ActivityNewState {
  String get title => throw _privateConstructorUsedError;
  bool get completionDateEnabled => throw _privateConstructorUsedError;
  DateTime? get completionDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityNewStateCopyWith<ActivityNewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityNewStateCopyWith<$Res> {
  factory $ActivityNewStateCopyWith(ActivityNewState value,
          $Res Function(ActivityNewState) then) =
      _$ActivityNewStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      bool completionDateEnabled,
      DateTime? completionDate,
      String? description});
}

/// @nodoc
class _$ActivityNewStateCopyWithImpl<$Res>
    implements $ActivityNewStateCopyWith<$Res> {
  _$ActivityNewStateCopyWithImpl(this._value, this._then);

  final ActivityNewState _value;
  // ignore: unused_field
  final $Res Function(ActivityNewState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? completionDateEnabled = freezed,
    Object? completionDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completionDateEnabled: completionDateEnabled == freezed
          ? _value.completionDateEnabled
          : completionDateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActivityNewStateCopyWith<$Res>
    implements $ActivityNewStateCopyWith<$Res> {
  factory _$ActivityNewStateCopyWith(_ActivityNewState value,
          $Res Function(_ActivityNewState) then) =
      __$ActivityNewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      bool completionDateEnabled,
      DateTime? completionDate,
      String? description});
}

/// @nodoc
class __$ActivityNewStateCopyWithImpl<$Res>
    extends _$ActivityNewStateCopyWithImpl<$Res>
    implements _$ActivityNewStateCopyWith<$Res> {
  __$ActivityNewStateCopyWithImpl(
      _ActivityNewState _value, $Res Function(_ActivityNewState) _then)
      : super(_value, (v) => _then(v as _ActivityNewState));

  @override
  _ActivityNewState get _value => super._value as _ActivityNewState;

  @override
  $Res call({
    Object? title = freezed,
    Object? completionDateEnabled = freezed,
    Object? completionDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_ActivityNewState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completionDateEnabled: completionDateEnabled == freezed
          ? _value.completionDateEnabled
          : completionDateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ActivityNewState
    with DiagnosticableTreeMixin
    implements _ActivityNewState {
  _$_ActivityNewState(
      {required this.title,
      required this.completionDateEnabled,
      this.completionDate,
      this.description});

  @override
  final String title;
  @override
  final bool completionDateEnabled;
  @override
  final DateTime? completionDate;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewState(title: $title, completionDateEnabled: $completionDateEnabled, completionDate: $completionDate, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActivityNewState'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty(
          'completionDateEnabled', completionDateEnabled))
      ..add(DiagnosticsProperty('completionDate', completionDate))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityNewState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completionDateEnabled,
                    completionDateEnabled) ||
                other.completionDateEnabled == completionDateEnabled) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, completionDateEnabled,
      completionDate, description);

  @JsonKey(ignore: true)
  @override
  _$ActivityNewStateCopyWith<_ActivityNewState> get copyWith =>
      __$ActivityNewStateCopyWithImpl<_ActivityNewState>(
          this, _$identity);
}

abstract class _ActivityNewState implements ActivityNewState {
  factory _ActivityNewState(
      {required String title,
      required bool completionDateEnabled,
      DateTime? completionDate,
      String? description}) = _$_ActivityNewState;

  @override
  String get title;
  @override
  bool get completionDateEnabled;
  @override
  DateTime? get completionDate;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$ActivityNewStateCopyWith<_ActivityNewState> get copyWith =>
      throw _privateConstructorUsedError;
}
