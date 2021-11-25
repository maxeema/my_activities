// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivityTearOff {
  const _$ActivityTearOff();

  _Activity call(
      {required String id,
      required String name,
      required bool completed,
      required DateTime creationDate,
      String? description,
      DateTime? completionDate}) {
    return _Activity(
      id: id,
      name: name,
      completed: completed,
      creationDate: creationDate,
      description: description,
      completionDate: completionDate,
    );
  }
}

/// @nodoc
const $Activity = _$ActivityTearOff();

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get completionDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(
          Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool completed,
      DateTime creationDate,
      String? description,
      DateTime? completionDate});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? completed = freezed,
    Object? creationDate = freezed,
    Object? description = freezed,
    Object? completionDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ActivityCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(
          _Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool completed,
      DateTime creationDate,
      String? description,
      DateTime? completionDate});
}

/// @nodoc
class __$ActivityCopyWithImpl<$Res> extends _$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(
      _Activity _value, $Res Function(_Activity) _then)
      : super(_value, (v) => _then(v as _Activity));

  @override
  _Activity get _value => super._value as _Activity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? completed = freezed,
    Object? creationDate = freezed,
    Object? description = freezed,
    Object? completionDate = freezed,
  }) {
    return _then(_Activity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completionDate: completionDate == freezed
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Activity implements _Activity {
  _$_Activity(
      {required this.id,
      required this.name,
      required this.completed,
      required this.creationDate,
      this.description,
      this.completionDate});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool completed;
  @override
  final DateTime creationDate;
  @override
  final String? description;
  @override
  final DateTime? completionDate;

  @override
  String toString() {
    return 'Activity(id: $id, name: $name, completed: $completed, creationDate: $creationDate, description: $description, completionDate: $completionDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Activity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, completed,
      creationDate, description, completionDate);

  @JsonKey(ignore: true)
  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);
}

abstract class _Activity implements Activity {
  factory _Activity(
      {required String id,
      required String name,
      required bool completed,
      required DateTime creationDate,
      String? description,
      DateTime? completionDate}) = _$_Activity;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get completed;
  @override
  DateTime get creationDate;
  @override
  String? get description;
  @override
  DateTime? get completionDate;
  @override
  @JsonKey(ignore: true)
  _$ActivityCopyWith<_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}
