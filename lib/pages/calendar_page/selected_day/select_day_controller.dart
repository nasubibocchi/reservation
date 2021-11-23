import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'select_day_state.dart';

class SelectDayController extends StateNotifier<SelectDayState> {
  SelectDayController() : super(const SelectDayState());

  void changeSelectDay (selectedDay) {
    state = state.copyWith(selectedDay: selectedDay);
  }
}