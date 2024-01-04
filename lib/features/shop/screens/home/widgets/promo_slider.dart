import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/features/shop/controllers/home_controller.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubPromoSlider extends StatelessWidget {
  SukjunubPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners
              .map((url) => SukjunubRoundedImage(imageUrl: url))
              .toList(),
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  SukjunubCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? SukjunubColors.primary
                        : SukjunubColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
