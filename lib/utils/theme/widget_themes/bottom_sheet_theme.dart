 import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';

class SukjunubBottomSheetTheme {
  SukjunubBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: SukjunubColors.white,
    modalBackgroundColor: SukjunubColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: SukjunubColors.black,
    modalBackgroundColor: SukjunubColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
