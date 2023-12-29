import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubSocialButtons extends StatelessWidget {
  const SukjunubSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SukjunubColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SukjunubSizes.iconMd,
              height: SukjunubSizes.iconMd,
              image: AssetImage(SukjunubImages.google),
            ),
          ),
        ),
        const SizedBox(width: SukjunubSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SukjunubColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SukjunubSizes.iconMd,
              height: SukjunubSizes.iconMd,
              image: AssetImage(SukjunubImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

