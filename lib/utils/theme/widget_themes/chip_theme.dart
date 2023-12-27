import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class SukjunubChipTheme {
  SukjunubChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: SukjunubColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: SukjunubColors.black),
    selectedColor: SukjunubColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SukjunubColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: SukjunubColors.darkerGrey,
    labelStyle: TextStyle(color: SukjunubColors.white),
    selectedColor: SukjunubColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SukjunubColors.white,
  );
}
