// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_new_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivityNewEventTearOff {
  const _$ActivityNewEventTearOff();

  _SetTitle setTitle(String title) {
    return _SetTitle(
      title,
    );
  }

  _SetDescription setDescription(String description) {
    return _SetDescription(
      description,
    );
  }

  _SetCompletionDateTimeEnabled setCompletionDateTimeEnabled(bool enabled) {
    return _SetCompletionDateTimeEnabled(
      enabled,
    );
  }

  _SetCompletionDateTime setCompletionDateTime(DateTime newDateTime) {
    return _SetCompletionDateTime(
      newDateTime,
    );
  }

  _SetCompletionTimeOfDay setCompletionTimeOfDay(TimeOfDay newTimeOfDate) {
    return _SetCompletionTimeOfDay(
      newTimeOfDate,
    );
  }
}

/// @nodoc
const $ActivityNewEvent = _$ActivityNewEventTearOff();

/// @nodoc
mixin _$ActivityNewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityNewEventCopyWith<$Res> {
  factory $ActivityNewEventCopyWith(ActivityNewEvent value,
          $Res Function(ActivityNewEvent) then) =
      _$ActivityNewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityNewEventCopyWithImpl<$Res>
    implements $ActivityNewEventCopyWith<$Res> {
  _$ActivityNewEventCopyWithImpl(this._value, this._then);

  final ActivityNewEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityNewEvent) _then;
}

/// @nodoc
abstract class _$SetTitleCopyWith<$Res> {
  factory _$SetTitleCopyWith(_SetTitle value, $Res Function(_SetTitle) then) =
      __$SetTitleCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$SetTitleCopyWithImpl<$Res>
    extends _$ActivityNewEventCopyWithImpl<$Res>
    implements _$SetTitleCopyWith<$Res> {
  __$SetTitleCopyWithImpl(_SetTitle _value, $Res Function(_SetTitle) _then)
      : super(_value, (v) => _then(v as _SetTitle));

  @override
  _SetTitle get _value => super._value as _SetTitle;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_SetTitle(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetTitle with DiagnosticableTreeMixin implements _SetTitle {
  const _$_SetTitle(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewEvent.setTitle(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActivityNewEvent.setTitle'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  _$SetTitleCopyWith<_SetTitle> get copyWith =>
      __$SetTitleCopyWithImpl<_SetTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) {
    return setTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) {
    return setTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setTitle != null) {
      return setTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) {
    return setTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) {
    return setTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setTitle != null) {
      return setTitle(this);
    }
    return orElse();
  }
}

abstract class _SetTitle implements ActivityNewEvent {
  const factory _SetTitle(String title) = _$_SetTitle;

  String get title;
  @JsonKey(ignore: true)
  _$SetTitleCopyWith<_SetTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetDescriptionCopyWith<$Res> {
  factory _$SetDescriptionCopyWith(
          _SetDescription value, $Res Function(_SetDescription) then) =
      __$SetDescriptionCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$SetDescriptionCopyWithImpl<$Res>
    extends _$ActivityNewEventCopyWithImpl<$Res>
    implements _$SetDescriptionCopyWith<$Res> {
  __$SetDescriptionCopyWithImpl(
      _SetDescription _value, $Res Function(_SetDescription) _then)
      : super(_value, (v) => _then(v as _SetDescription));

  @override
  _SetDescription get _value => super._value as _SetDescription;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_SetDescription(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetDescription
    with DiagnosticableTreeMixin
    implements _SetDescription {
  const _$_SetDescription(this.description);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewEvent.setDescription(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActivityNewEvent.setDescription'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetDescription &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  _$SetDescriptionCopyWith<_SetDescription> get copyWith =>
      __$SetDescriptionCopyWithImpl<_SetDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) {
    return setDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) {
    return setDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setDescription != null) {
      return setDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) {
    return setDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) {
    return setDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setDescription != null) {
      return setDescription(this);
    }
    return orElse();
  }
}

abstract class _SetDescription implements ActivityNewEvent {
  const factory _SetDescription(String description) = _$_SetDescription;

  String get description;
  @JsonKey(ignore: true)
  _$SetDescriptionCopyWith<_SetDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCompletionDateTimeEnabledCopyWith<$Res> {
  factory _$SetCompletionDateTimeEnabledCopyWith(
          _SetCompletionDateTimeEnabled value,
          $Res Function(_SetCompletionDateTimeEnabled) then) =
      __$SetCompletionDateTimeEnabledCopyWithImpl<$Res>;
  $Res call({bool enabled});
}

/// @nodoc
class __$SetCompletionDateTimeEnabledCopyWithImpl<$Res>
    extends _$ActivityNewEventCopyWithImpl<$Res>
    implements _$SetCompletionDateTimeEnabledCopyWith<$Res> {
  __$SetCompletionDateTimeEnabledCopyWithImpl(
      _SetCompletionDateTimeEnabled _value,
      $Res Function(_SetCompletionDateTimeEnabled) _then)
      : super(_value, (v) => _then(v as _SetCompletionDateTimeEnabled));

  @override
  _SetCompletionDateTimeEnabled get _value =>
      super._value as _SetCompletionDateTimeEnabled;

  @override
  $Res call({
    Object? enabled = freezed,
  }) {
    return _then(_SetCompletionDateTimeEnabled(
      enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetCompletionDateTimeEnabled
    with DiagnosticableTreeMixin
    implements _SetCompletionDateTimeEnabled {
  const _$_SetCompletionDateTimeEnabled(this.enabled);

  @override
  final bool enabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewEvent.setCompletionDateTimeEnabled(enabled: $enabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ActivityNewEvent.setCompletionDateTimeEnabled'))
      ..add(DiagnosticsProperty('enabled', enabled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetCompletionDateTimeEnabled &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @JsonKey(ignore: true)
  @override
  _$SetCompletionDateTimeEnabledCopyWith<_SetCompletionDateTimeEnabled>
      get copyWith => __$SetCompletionDateTimeEnabledCopyWithImpl<
          _SetCompletionDateTimeEnabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) {
    return setCompletionDateTimeEnabled(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) {
    return setCompletionDateTimeEnabled?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionDateTimeEnabled != null) {
      return setCompletionDateTimeEnabled(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) {
    return setCompletionDateTimeEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) {
    return setCompletionDateTimeEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionDateTimeEnabled != null) {
      return setCompletionDateTimeEnabled(this);
    }
    return orElse();
  }
}

abstract class _SetCompletionDateTimeEnabled implements ActivityNewEvent {
  const factory _SetCompletionDateTimeEnabled(bool enabled) =
      _$_SetCompletionDateTimeEnabled;

  bool get enabled;
  @JsonKey(ignore: true)
  _$SetCompletionDateTimeEnabledCopyWith<_SetCompletionDateTimeEnabled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCompletionDateTimeCopyWith<$Res> {
  factory _$SetCompletionDateTimeCopyWith(_SetCompletionDateTime value,
          $Res Function(_SetCompletionDateTime) then) =
      __$SetCompletionDateTimeCopyWithImpl<$Res>;
  $Res call({DateTime newDateTime});
}

/// @nodoc
class __$SetCompletionDateTimeCopyWithImpl<$Res>
    extends _$ActivityNewEventCopyWithImpl<$Res>
    implements _$SetCompletionDateTimeCopyWith<$Res> {
  __$SetCompletionDateTimeCopyWithImpl(_SetCompletionDateTime _value,
      $Res Function(_SetCompletionDateTime) _then)
      : super(_value, (v) => _then(v as _SetCompletionDateTime));

  @override
  _SetCompletionDateTime get _value => super._value as _SetCompletionDateTime;

  @override
  $Res call({
    Object? newDateTime = freezed,
  }) {
    return _then(_SetCompletionDateTime(
      newDateTime == freezed
          ? _value.newDateTime
          : newDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SetCompletionDateTime
    with DiagnosticableTreeMixin
    implements _SetCompletionDateTime {
  const _$_SetCompletionDateTime(this.newDateTime);

  @override
  final DateTime newDateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewEvent.setCompletionDateTime(newDateTime: $newDateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ActivityNewEvent.setCompletionDateTime'))
      ..add(DiagnosticsProperty('newDateTime', newDateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetCompletionDateTime &&
            (identical(other.newDateTime, newDateTime) ||
                other.newDateTime == newDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDateTime);

  @JsonKey(ignore: true)
  @override
  _$SetCompletionDateTimeCopyWith<_SetCompletionDateTime> get copyWith =>
      __$SetCompletionDateTimeCopyWithImpl<_SetCompletionDateTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) {
    return setCompletionDateTime(newDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) {
    return setCompletionDateTime?.call(newDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionDateTime != null) {
      return setCompletionDateTime(newDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) {
    return setCompletionDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) {
    return setCompletionDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionDateTime != null) {
      return setCompletionDateTime(this);
    }
    return orElse();
  }
}

abstract class _SetCompletionDateTime implements ActivityNewEvent {
  const factory _SetCompletionDateTime(DateTime newDateTime) =
      _$_SetCompletionDateTime;

  DateTime get newDateTime;
  @JsonKey(ignore: true)
  _$SetCompletionDateTimeCopyWith<_SetCompletionDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCompletionTimeOfDayCopyWith<$Res> {
  factory _$SetCompletionTimeOfDayCopyWith(_SetCompletionTimeOfDay value,
          $Res Function(_SetCompletionTimeOfDay) then) =
      __$SetCompletionTimeOfDayCopyWithImpl<$Res>;
  $Res call({TimeOfDay newTimeOfDate});
}

/// @nodoc
class __$SetCompletionTimeOfDayCopyWithImpl<$Res>
    extends _$ActivityNewEventCopyWithImpl<$Res>
    implements _$SetCompletionTimeOfDayCopyWith<$Res> {
  __$SetCompletionTimeOfDayCopyWithImpl(_SetCompletionTimeOfDay _value,
      $Res Function(_SetCompletionTimeOfDay) _then)
      : super(_value, (v) => _then(v as _SetCompletionTimeOfDay));

  @override
  _SetCompletionTimeOfDay get _value => super._value as _SetCompletionTimeOfDay;

  @override
  $Res call({
    Object? newTimeOfDate = freezed,
  }) {
    return _then(_SetCompletionTimeOfDay(
      newTimeOfDate == freezed
          ? _value.newTimeOfDate
          : newTimeOfDate // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_SetCompletionTimeOfDay
    with DiagnosticableTreeMixin
    implements _SetCompletionTimeOfDay {
  const _$_SetCompletionTimeOfDay(this.newTimeOfDate);

  @override
  final TimeOfDay newTimeOfDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityNewEvent.setCompletionTimeOfDay(newTimeOfDate: $newTimeOfDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ActivityNewEvent.setCompletionTimeOfDay'))
      ..add(DiagnosticsProperty('newTimeOfDate', newTimeOfDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetCompletionTimeOfDay &&
            (identical(other.newTimeOfDate, newTimeOfDate) ||
                other.newTimeOfDate == newTimeOfDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTimeOfDate);

  @JsonKey(ignore: true)
  @override
  _$SetCompletionTimeOfDayCopyWith<_SetCompletionTimeOfDay> get copyWith =>
      __$SetCompletionTimeOfDayCopyWithImpl<_SetCompletionTimeOfDay>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) setTitle,
    required TResult Function(String description) setDescription,
    required TResult Function(bool enabled) setCompletionDateTimeEnabled,
    required TResult Function(DateTime newDateTime) setCompletionDateTime,
    required TResult Function(TimeOfDay newTimeOfDate) setCompletionTimeOfDay,
  }) {
    return setCompletionTimeOfDay(newTimeOfDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
  }) {
    return setCompletionTimeOfDay?.call(newTimeOfDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? setTitle,
    TResult Function(String description)? setDescription,
    TResult Function(bool enabled)? setCompletionDateTimeEnabled,
    TResult Function(DateTime newDateTime)? setCompletionDateTime,
    TResult Function(TimeOfDay newTimeOfDate)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionTimeOfDay != null) {
      return setCompletionTimeOfDay(newTimeOfDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTitle value) setTitle,
    required TResult Function(_SetDescription value) setDescription,
    required TResult Function(_SetCompletionDateTimeEnabled value)
        setCompletionDateTimeEnabled,
    required TResult Function(_SetCompletionDateTime value)
        setCompletionDateTime,
    required TResult Function(_SetCompletionTimeOfDay value)
        setCompletionTimeOfDay,
  }) {
    return setCompletionTimeOfDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
  }) {
    return setCompletionTimeOfDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTitle value)? setTitle,
    TResult Function(_SetDescription value)? setDescription,
    TResult Function(_SetCompletionDateTimeEnabled value)?
        setCompletionDateTimeEnabled,
    TResult Function(_SetCompletionDateTime value)? setCompletionDateTime,
    TResult Function(_SetCompletionTimeOfDay value)? setCompletionTimeOfDay,
    required TResult orElse(),
  }) {
    if (setCompletionTimeOfDay != null) {
      return setCompletionTimeOfDay(this);
    }
    return orElse();
  }
}

abstract class _SetCompletionTimeOfDay implements ActivityNewEvent {
  const factory _SetCompletionTimeOfDay(TimeOfDay newTimeOfDate) =
      _$_SetCompletionTimeOfDay;

  TimeOfDay get newTimeOfDate;
  @JsonKey(ignore: true)
  _$SetCompletionTimeOfDayCopyWith<_SetCompletionTimeOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}
