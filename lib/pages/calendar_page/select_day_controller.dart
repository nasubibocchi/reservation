import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/pages/calendar_page/select_day_state.dart';

class SelectDayController extends StateNotifier<SelectDayState> {
  SelectDayController() : super(const SelectDayState());

  void selectDay (selectedDay) {
    state = state.copyWith(selectedDay: selectedDay);
  }
}