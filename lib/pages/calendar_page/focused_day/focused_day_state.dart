import 'package:freezed_annotation/freezed_annotation.dart';

part 'focused_day_state.freezed.dart';

@freezed
class FocusedDayState with _$FocusedDayState {
  const factory FocusedDayState({required DateTime focusedDay}) = _FocusedDayState;
}