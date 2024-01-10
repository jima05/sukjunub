import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/shop/screens/all_products/all_products.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SukjunubPrimaryHeaderContainer(
                child: Column(
              children: [
                // AppBar
                SukjunubHomeAppBar(),
                SizedBox(height: SukjunubSizes.spaceBtwSections),
                // SearchBar
                SukjunubSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(height: SukjunubSizes.spaceBtwSections),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: SukjunubSizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      SukjunubSectionHeading(
                        title: 'Porpular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: SukjunubSizes.spaceBtwItems),

                      //  // Categories list
                      SukjunubHomeCategories(),
                      SizedBox(
                        height: SukjunubSizes.spaceBtwSections,
                      ),
                    ],
                  ),
                )
              ],
            )),

            // Body
            Padding(
                padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
                child: Column(
                  children: [
                    // Promo Slider
                    SukjunubPromoSlider(
                      banners: const [
                        SukjunubImages.promoBanner1,
                        SukjunubImages.promoBanner2,
                        SukjunubImages.promoBanner3
                      ],
                    ),
                    const SizedBox(height: SukjunubSizes.spaceBtwSections),

                    // Heading
                    SukjunubSectionHeading(
                        title: 'Popular Products', onPressed: () => Get.to(()=>const AllProducts())),
                    const SizedBox(height: SukjunubSizes.spaceBtwItems),

                    // Popular Products
                    SukjunubGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) =>
                          const SukjunubProductCardVertical(),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
