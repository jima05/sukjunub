import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/brands/brand_card.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubBrandShowcase extends StatelessWidget {
  const SukjunubBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SukjunubRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SukjunubSizes.md),
      borderColor: SukjunubColors.darkGrey,
      margin: const EdgeInsets.only(bottom: SukjunubSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with products Count
          const SukjunubBrandCard(showBorder: false),
          const SizedBox(height: SukjunubSizes.spaceBtwItems,),

          // Brand top 3 products
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList() ,
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final dark = SukjunubHelperFunctions.isDarkMode(context);
  return Expanded(
    child: SukjunubRoundedContainer(
      height: 100,
      backgroundColor: dark ? SukjunubColors.darkGrey : SukjunubColors.light,
      margin: const EdgeInsets.only(right: SukjunubSizes.sm),
      padding: const EdgeInsets.all(SukjunubSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}

