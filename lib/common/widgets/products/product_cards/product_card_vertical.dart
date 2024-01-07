import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/styles/shadows.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/common/widgets/texts/brand_title_text_with_verification.dart';
import 'package:sukjunub/common/widgets/texts/product_price_text.dart';
import 'package:sukjunub/common/widgets/texts/product_title_text.dart';
import 'package:sukjunub/features/shop/screens/product_details/product_detail.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubProductCardVertical extends StatelessWidget {
  const SukjunubProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    // Container with side paddings, color, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SukjunubShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SukjunubSizes.productImageRadius),
          color: dark ? SukjunubColors.darkerGrey : SukjunubColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Whishlist Button, Discount Tag
            SukjunubRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SukjunubSizes.sm),
              backgroundColor:
                  dark ? SukjunubColors.dark : SukjunubColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const SukjunubRoundedImage(
                      imageUrl: SukjunubImages.productImage1,
                      applyImageRadius: true),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: SukjunubRoundedContainer(
                      radius: SukjunubSizes.sm,
                      backgroundColor:
                          SukjunubColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SukjunubSizes.sm,
                          vertical: SukjunubSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: SukjunubColors.black,
                            ),
                      ),
                    ),
                  ),

                  // Favorite Icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: SukjunubCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),

            // --Details
            const Padding(
              padding: EdgeInsets.only(left: SukjunubSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SukjunubProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: SukjunubSizes.spaceBtwItems / 2),
                  SukjunubBrandTitleWithVerification(title: 'Nike',),
                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //  Price
                const Padding(
                  padding: EdgeInsets.only(left: SukjunubSizes.sm),
                  child: SukjunubProductPriceText(price: '35.0'),
                ),

                // Add To Cart
                Container(
                  decoration: const BoxDecoration(
                    color: SukjunubColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SukjunubSizes.cardRadiusMd),
                      bottomRight:
                          Radius.circular(SukjunubSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: SukjunubSizes.iconLg * 1.2,
                      height: SukjunubSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: SukjunubColors.white,
                      ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


