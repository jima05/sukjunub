import 'package:flutter/material.dart';
import 'package:sukjunub/utils/theme/widget_themes/text_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/appbar_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/chip_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:sukjunub/utils/theme/widget_themes/text_field_theme.dart';

import '../constants/colors.dart';

class SukjunubTheme {
  SukjunubTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: SukjunubColors.grey,
    brightness: Brightness.light,
    primaryColor: SukjunubColors.primary,
     textTheme: SukjunubTextTheme.lightTextTheme,
    chipTheme: SukjunubChipTheme.lightChipTheme,
    scaffoldBackgroundColor: SukjunubColors.white,
    appBarTheme: SukjunubAppBarTheme.lightAppBarTheme,
    checkboxTheme: SukjunubCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: SukjunubBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SukjunubElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SukjunubOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: SukjunubTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: SukjunubColors.grey,
    brightness: Brightness.dark,
    primaryColor: SukjunubColors.primary,
    textTheme: SukjunubTextTheme.darkTextTheme,
    chipTheme: SukjunubChipTheme.darkChipTheme,
    scaffoldBackgroundColor: SukjunubColors.black,
    appBarTheme: SukjunubAppBarTheme.darkAppBarTheme,
    checkboxTheme: SukjunubCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: SukjunubBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SukjunubElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SukjunubOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SukjunubTextFormFieldTheme.darkInputDecorationTheme,
  );
}
