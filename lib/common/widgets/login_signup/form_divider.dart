import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubFormDivider extends StatelessWidget {
  const SukjunubFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? SukjunubColors.darkGrey : SukjunubColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
                color: dark ? SukjunubColors.darkGrey : SukjunubColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
