import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_day_state.freezed.dart';

@freezed
class SelectDayState with _$SelectDayState {
  const factory SelectDayState({selectedDay}) = _SelectDayState;
}
