import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'focused_day_state.dart';

class FocusedDayController extends StateNotifier<FocusedDayState> {
  FocusedDayController() : super(FocusedDayState(focusedDay: DateTime.now()));

  void changeFocusedDay (focusedDay) {
    state = state.copyWith(focusedDay: focusedDay);
  }

}