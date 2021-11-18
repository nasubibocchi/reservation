import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/pages/calendar_page/select_day_state.dart';

class SelectDayController extends StateNotifier<SelectDayState> {
  SelectDayController() : super(const SelectDayState());

  void selectDay (selectedDay, focusedDay) {
    state = state.copyWith(selectedDay: selectedDay, focusDay: focusedDay);
  }

  void initDay (focusedDay) {
    state = state.copyWith(focusDay: focusedDay);
  }
}