import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/device/device_utility.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubSearchContainer extends StatelessWidget {
  const SukjunubSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: SukjunubSizes.defaultSpace),
        child: Container(
          width: SukjunubDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SukjunubSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SukjunubColors.dark
                    : SukjunubColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SukjunubSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SukjunubColors.grey) : null,
          ),
          child: Row(children: [
            Icon(icon, color: SukjunubColors.darkerGrey),
            const SizedBox(width: SukjunubSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ]),
        ),
      ),
    );
  }
}
