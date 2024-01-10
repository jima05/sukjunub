import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SukjunubAppBar(
        title: Text('Sports and Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const SukjunubRoundedImage(
                  imageUrl: SukjunubImages.banner4,
                  width: double.infinity,
                  applyImageRadius: true),

              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Sub-categories
              Column(
                children: [
                  // Heading
                  SukjunubSectionHeading(
                      title: "Sports Shirts", onPressed: () {}),
                  const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: SukjunubSizes.spaceBtwItems,),
                        itemBuilder: (context, index) =>
                            const SukjunubProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
