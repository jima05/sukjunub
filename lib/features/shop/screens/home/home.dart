import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sukjunub/common/widgets/text/section_heading.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sukjunub/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    ],
                  ),
                )
              ],
            )),

            // Body
            Padding(
                padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
                child: SukjunubPromoSlider())
          ],
        ),
      ),
    );
  }
}

