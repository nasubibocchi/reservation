// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'select_day_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectDayStateTearOff {
  const _$SelectDayStateTearOff();

  _SelectDayState call({dynamic selectedDay, dynamic focusDay}) {
    return _SelectDayState(
      selectedDay: selectedDay,
      focusDay: focusDay,
    );
  }
}

/// @nodoc
const $SelectDayState = _$SelectDayStateTearOff();

/// @nodoc
mixin _$SelectDayState {
  dynamic get selectedDay => throw _privateConstructorUsedError;
  dynamic get focusDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectDayStateCopyWith<SelectDayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectDayStateCopyWith<$Res> {
  factory $SelectDayStateCopyWith(
          SelectDayState value, $Res Function(SelectDayState) then) =
      _$SelectDayStateCopyWithImpl<$Res>;
  $Res call({dynamic selectedDay, dynamic focusDay});
}

/// @nodoc
class _$SelectDayStateCopyWithImpl<$Res>
    implements $SelectDayStateCopyWith<$Res> {
  _$SelectDayStateCopyWithImpl(this._value, this._then);

  final SelectDayState _value;
  // ignore: unused_field
  final $Res Function(SelectDayState) _then;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusDay = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      focusDay: focusDay == freezed
          ? _value.focusDay
          : focusDay // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$SelectDayStateCopyWith<$Res>
    implements $SelectDayStateCopyWith<$Res> {
  factory _$SelectDayStateCopyWith(
          _SelectDayState value, $Res Function(_SelectDayState) then) =
      __$SelectDayStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic selectedDay, dynamic focusDay});
}

/// @nodoc
class __$SelectDayStateCopyWithImpl<$Res>
    extends _$SelectDayStateCopyWithImpl<$Res>
    implements _$SelectDayStateCopyWith<$Res> {
  __$SelectDayStateCopyWithImpl(
      _SelectDayState _value, $Res Function(_SelectDayState) _then)
      : super(_value, (v) => _then(v as _SelectDayState));

  @override
  _SelectDayState get _value => super._value as _SelectDayState;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusDay = freezed,
  }) {
    return _then(_SelectDayState(
      selectedDay: selectedDay == freezed ? _value.selectedDay : selectedDay,
      focusDay: focusDay == freezed ? _value.focusDay : focusDay,
    ));
  }
}

/// @nodoc

class _$_SelectDayState implements _SelectDayState {
  const _$_SelectDayState({this.selectedDay, this.focusDay});

  @override
  final dynamic selectedDay;
  @override
  final dynamic focusDay;

  @override
  String toString() {
    return 'SelectDayState(selectedDay: $selectedDay, focusDay: $focusDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectDayState &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality().equals(other.focusDay, focusDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusDay));

  @JsonKey(ignore: true)
  @override
  _$SelectDayStateCopyWith<_SelectDayState> get copyWith =>
      __$SelectDayStateCopyWithImpl<_SelectDayState>(this, _$identity);
}

abstract class _SelectDayState implements SelectDayState {
  const factory _SelectDayState({dynamic selectedDay, dynamic focusDay}) =
      _$_SelectDayState;

  @override
  dynamic get selectedDay;
  @override
  dynamic get focusDay;
  @override
  @JsonKey(ignore: true)
  _$SelectDayStateCopyWith<_SelectDayState> get copyWith =>
      throw _privateConstructorUsedError;
}
