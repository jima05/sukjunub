import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            SukjunubProductImageSlider(),

            // Product Detalis
            Padding(
              padding: EdgeInsets.only(
                right: SukjunubSizes.defaultSpace,
                left: SukjunubSizes.defaultSpace,
                bottom: SukjunubSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Ratings & Share
                  SukjunubRatingandShare(),

                  // Price, Title, Stock & Brand
                  SukjunubProductMetaData(),

                  // Attributes

                  // Description

                  // Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
