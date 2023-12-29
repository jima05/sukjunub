import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class SukjunubFormDivider extends StatelessWidget {
  const SukjunubFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark
                    ? SukjunubColors.darkGrey
                    : SukjunubColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(
          SukjunubTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
                color: dark
                    ? SukjunubColors.darkGrey
                    : SukjunubColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
