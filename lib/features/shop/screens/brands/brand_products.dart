import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/brands/brand_card.dart';
import 'package:sukjunub/common/widgets/products/sortable/sortable_products.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SukjunubAppBar(
          title: Text('Nike'), showBackArrow: true),
                body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: Column(
          children: [
            // Brand Detail
              SukjunubBrandCard(showBorder: true),
              SizedBox(height: SukjunubSizes.spaceBtwItems),

              SukjunubSortableProducts(),

          ],
        ),
        ),
      ),
    );
  }
}