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
  });

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index,_)=>controller.updatePageIndicator(index)
            ),
            items: const [
              SukjunubRoundedImage(imageUrl: SukjunubImages.promoBanner1),
              SukjunubRoundedImage(imageUrl: SukjunubImages.promoBanner2),
              SukjunubRoundedImage(imageUrl: SukjunubImages.promoBanner3),
            ]),
        const SizedBox(height: SukjunubSizes.spaceBtwItems),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 3; i++)
                SukjunubCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i? SukjunubColors.primary : SukjunubColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
