import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubCircularIcon extends StatelessWidget {
  const SukjunubCircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = SukjunubSizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressesd});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressesd;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : dark
                  ? SukjunubColors.black.withOpacity(0.9)
                  : SukjunubColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onPressesd,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
