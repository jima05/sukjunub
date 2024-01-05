import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/images/circular_image.dart';
import 'package:sukjunub/common/widgets/texts/brand_title_text_with_verification.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/enums.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubBrandCard extends StatelessWidget {
  const SukjunubBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: SukjunubRoundedContainer(
        padding: const EdgeInsets.all(SukjunubSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: SukjunubCircularImage(
                image: SukjunubImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? SukjunubColors.white : SukjunubColors.dark,
              ),
            ),
            const SizedBox(width: SukjunubSizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SukjunubBrandTitleWithVerification(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
