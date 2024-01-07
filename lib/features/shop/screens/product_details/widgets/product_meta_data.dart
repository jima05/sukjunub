import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/images/circular_image.dart';
import 'package:sukjunub/common/widgets/texts/brand_title_text_with_verification.dart';
import 'package:sukjunub/common/widgets/texts/product_price_text.dart';
import 'package:sukjunub/common/widgets/texts/product_title_text.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/enums.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubProductMetaData extends StatelessWidget {
  const SukjunubProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            SukjunubRoundedContainer(
              radius: SukjunubSizes.sm,
              backgroundColor: SukjunubColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: SukjunubSizes.sm, vertical: SukjunubSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: SukjunubColors.black,
                    ),
              ),
            ),
            const SizedBox(width: SukjunubSizes.spaceBtwItems),

            // Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: SukjunubSizes.spaceBtwItems),
            const SukjunubProductPriceText(
              price: '175',
              isLarge: true,
            ),
            const SizedBox(width: SukjunubSizes.spaceBtwItems / 1.5),
          ],
        ),

        // Title
        const SukjunubProductTitleText(title: 'Green Nike Product Shirt'),
        const SizedBox(width: SukjunubSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const SukjunubProductTitleText(title: 'Status'),
            const SizedBox(width: SukjunubSizes.spaceBtwItems),
            Text(
              'Instoke',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(width: SukjunubSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            SukjunubCircularImage(
              image: SukjunubImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? SukjunubColors.white : SukjunubColors.black,
            ),
            const SukjunubBrandTitleWithVerification(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
