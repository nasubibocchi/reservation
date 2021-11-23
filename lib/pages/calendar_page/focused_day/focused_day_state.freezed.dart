// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'focused_day_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FocusedDayStateTearOff {
  const _$FocusedDayStateTearOff();

  _FocusedDayState call({required DateTime focusedDay}) {
    return _FocusedDayState(
      focusedDay: focusedDay,
    );
  }
}

/// @nodoc
const $FocusedDayState = _$FocusedDayStateTearOff();

/// @nodoc
mixin _$FocusedDayState {
  DateTime get focusedDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FocusedDayStateCopyWith<FocusedDayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FocusedDayStateCopyWith<$Res> {
  factory $FocusedDayStateCopyWith(
          FocusedDayState value, $Res Function(FocusedDayState) then) =
      _$FocusedDayStateCopyWithImpl<$Res>;
  $Res call({DateTime focusedDay});
}

/// @nodoc
class _$FocusedDayStateCopyWithImpl<$Res>
    implements $FocusedDayStateCopyWith<$Res> {
  _$FocusedDayStateCopyWithImpl(this._value, this._then);

  final FocusedDayState _value;
  // ignore: unused_field
  final $Res Function(FocusedDayState) _then;

  @override
  $Res call({
    Object? focusedDay = freezed,
  }) {
    return _then(_value.copyWith(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FocusedDayStateCopyWith<$Res>
    implements $FocusedDayStateCopyWith<$Res> {
  factory _$FocusedDayStateCopyWith(
          _FocusedDayState value, $Res Function(_FocusedDayState) then) =
      __$FocusedDayStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime focusedDay});
}

/// @nodoc
class __$FocusedDayStateCopyWithImpl<$Res>
    extends _$FocusedDayStateCopyWithImpl<$Res>
    implements _$FocusedDayStateCopyWith<$Res> {
  __$FocusedDayStateCopyWithImpl(
      _FocusedDayState _value, $Res Function(_FocusedDayState) _then)
      : super(_value, (v) => _then(v as _FocusedDayState));

  @override
  _FocusedDayState get _value => super._value as _FocusedDayState;

  @override
  $Res call({
    Object? focusedDay = freezed,
  }) {
    return _then(_FocusedDayState(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_FocusedDayState implements _FocusedDayState {
  const _$_FocusedDayState({required this.focusedDay});

  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'FocusedDayState(focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FocusedDayState &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay);

  @JsonKey(ignore: true)
  @override
  _$FocusedDayStateCopyWith<_FocusedDayState> get copyWith =>
      __$FocusedDayStateCopyWithImpl<_FocusedDayState>(this, _$identity);
}

abstract class _FocusedDayState implements FocusedDayState {
  const factory _FocusedDayState({required DateTime focusedDay}) =
      _$_FocusedDayState;

  @override
  DateTime get focusedDay;
  @override
  @JsonKey(ignore: true)
  _$FocusedDayStateCopyWith<_FocusedDayState> get copyWith =>
      throw _privateConstructorUsedError;
}
