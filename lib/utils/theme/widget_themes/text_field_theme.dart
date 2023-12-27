import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class SukjunubTextFormFieldTheme {
  SukjunubTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: SukjunubColors.darkGrey,
    suffixIconColor: SukjunubColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: SukjunubSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SukjunubSizes.fontSizeMd, color: SukjunubColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: SukjunubSizes.fontSizeSm, color: SukjunubColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: SukjunubColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: SukjunubColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: SukjunubColors.darkGrey,
    suffixIconColor: SukjunubColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: SukjunubSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SukjunubSizes.fontSizeMd, color: SukjunubColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: SukjunubSizes.fontSizeSm, color: SukjunubColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: SukjunubColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SukjunubColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SukjunubSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: SukjunubColors.warning),
    ),
  );
}
