import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/texts/brand_title_text.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/enums.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubBrandTitleWithVerification extends StatelessWidget {
  const SukjunubBrandTitleWithVerification({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = SukjunubColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SukjunubBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxLines,
              textAlign: textAlign,
              brandTextSize: brandTextSize),
        ),
        const SizedBox(width: SukjunubSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: SukjunubColors.primary,
          size: SukjunubSizes.iconXs,
        )
      ],
    );
  }
}
