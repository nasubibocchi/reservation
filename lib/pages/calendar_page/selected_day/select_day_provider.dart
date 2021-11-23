import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reservation/pages/calendar_page/selected_day/select_day_controller.dart';

import 'select_day_state.dart';

final selectDayProvider =
    StateNotifierProvider.autoDispose<SelectDayController, SelectDayState>(
        (ref) => SelectDayController());
