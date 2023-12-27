import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubAppBarTheme{
  SukjunubAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: SukjunubColors.black, size: SukjunubSizes.iconMd),
    actionsIconTheme: IconThemeData(color: SukjunubColors.black, size: SukjunubSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: SukjunubColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: SukjunubColors.black, size: SukjunubSizes.iconMd),
    actionsIconTheme: IconThemeData(color: SukjunubColors.white, size: SukjunubSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: SukjunubColors.white),
  );
}