import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/appbar/tabbar.dart';
import 'package:sukjunub/common/widgets/brands/brand_card.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/shop/screens/brands/all_brands.dart';
import 'package:sukjunub/features/shop/screens/store/widgets/category_tab.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SukjunubAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            SukjunubCartCounterIcon(
              onPressed: () {},
              iconColor: null,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    dark ? SukjunubColors.black : SukjunubColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: SukjunubSizes.spaceBtwItems),
                      const SukjunubSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: SukjunubSizes.spaceBtwSections),

                      // Featured Brands
                      SukjunubSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(()=> const AllBrands()),
                      ),
                      const SizedBox(height: SukjunubSizes.spaceBtwItems / 1.5),

                      SukjunubGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const SukjunubBrandCard(
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // Tabs
                bottom: const SukjunubTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          // Body
          body: const TabBarView(children: [
            SukjunubCategoryTab(),
            SukjunubCategoryTab(),
            SukjunubCategoryTab(),
            SukjunubCategoryTab(),
            SukjunubCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
