import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/common/widgets/texts/brand_title_text_with_verification.dart';
import 'package:sukjunub/common/widgets/texts/product_title_text.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubCartIcon extends StatelessWidget {
  const SukjunubCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        SukjunubRoundedImage(
          imageUrl: SukjunubImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(SukjunubSizes.sm),
          backgroundColor:
              SukjunubHelperFunctions.isDarkMode(context)
                  ? SukjunubColors.darkerGrey
                  : SukjunubColors.light,
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems),
    
        // Title , Price & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SukjunubBrandTitleWithVerification(
              title: 'Nike',
            ),
            const Flexible(
                child: SukjunubProductTitleText(
              title: 'Black Sports Shoes',
              maxLines: 1,
            )),
    
            // Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '43',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
