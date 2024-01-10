import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/image_text_widget/vertical_image.dart';
import 'package:sukjunub/features/shop/screens/sub_category/sub_categories.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';

class SukjunubHomeCategories extends StatelessWidget {
  const SukjunubHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return SukjunubVerticalImageText(
            image: SukjunubImages.shoeIcon,
            title: 'Shoes',
            onTap: () => Get.to(()=> const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
