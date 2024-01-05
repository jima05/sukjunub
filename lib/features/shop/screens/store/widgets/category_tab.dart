import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/brands/brand_showcase.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubCategoryTab extends StatelessWidget {
  const SukjunubCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const SukjunubBrandShowcase(
                images: [
                  SukjunubImages.productImage3,
                  SukjunubImages.productImage2,
                  SukjunubImages.productImage4,
                ],
              ),
              const SizedBox(
                height: SukjunubSizes.spaceBtwItems,
              ),

              // Products
              SukjunubSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: SukjunubSizes.spaceBtwItems,
              ),

              SukjunubGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) =>
                      const SukjunubProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
