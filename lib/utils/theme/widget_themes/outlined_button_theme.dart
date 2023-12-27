import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class SukjunubOutlinedButtonTheme {
  SukjunubOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: SukjunubColors.dark,
      side: const BorderSide(color: SukjunubColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: SukjunubColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: SukjunubSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SukjunubSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: SukjunubColors.light,
      side: const BorderSide(color: SukjunubColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: SukjunubColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: SukjunubSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SukjunubSizes.buttonRadius)),
    ),
  );
}
