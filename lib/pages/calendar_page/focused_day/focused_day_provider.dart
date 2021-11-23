import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/pages/calendar_page/focused_day/focused_day_controller.dart';

import 'focused_day_state.dart';

final focusedDayProvider =
    StateNotifierProvider.autoDispose<FocusedDayController, FocusedDayState>(
        (ref) => FocusedDayController());
