import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class SukjunubElevatedButtonTheme {
  SukjunubElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: SukjunubColors.light,
      backgroundColor: SukjunubColors.primary,
      disabledForegroundColor: SukjunubColors.darkGrey,
      disabledBackgroundColor: SukjunubColors.buttonDisabled,
      side: const BorderSide(color: SukjunubColors.primary),
      padding: const EdgeInsets.symmetric(vertical: SukjunubSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: SukjunubColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SukjunubSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: SukjunubColors.light,
      backgroundColor: SukjunubColors.primary,
      disabledForegroundColor: SukjunubColors.darkGrey,
      disabledBackgroundColor: SukjunubColors.darkerGrey,
      side: const BorderSide(color: SukjunubColors.primary),
      padding: const EdgeInsets.symmetric(vertical: SukjunubSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: SukjunubColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SukjunubSizes.buttonRadius)),
    ),
  );
}
