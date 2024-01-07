import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubProductImageSlider extends StatelessWidget {
  const SukjunubProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return SukjunubCurvedEdgesWidget(
      child: Container(
        color: dark ? SukjunubColors.darkGrey : SukjunubColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(SukjunubSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(SukjunubImages.productImage5))),
                )),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: SukjunubSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: SukjunubSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => SukjunubRoundedImage(
                    width: 80,
                    imageUrl: SukjunubImages.productImage3,
                    backgroundColor:
                        dark ? SukjunubColors.dark : SukjunubColors.white,
                    border: Border.all(color: SukjunubColors.primary),
                    padding: const EdgeInsets.all(SukjunubSizes.sm),
                  ),
                ),
              ),
            ),

            // AppBar Icons
            const SukjunubAppBar(
              showBackArrow: true,
              actions: [
                SukjunubCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
