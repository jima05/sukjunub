import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/brands/brand_card.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/shop/screens/brands/brand_products.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SukjunubAppBar(
          title: Text('Popular Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const SukjunubSectionHeading(
                  title: 'Brands', showActionButton: false),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),

              // Brands
              SukjunubGridLayout(
                  itemCount: 9,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => SukjunubBrandCard(
                        showBorder: true, onTap: ()=>Get.to(()=>const BrandProducts()),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
