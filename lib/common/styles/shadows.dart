import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';

class SukjunubShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: SukjunubColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalalProductShadow = BoxShadow(
    color: SukjunubColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}