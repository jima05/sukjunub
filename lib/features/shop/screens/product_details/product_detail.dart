import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_bottom_add_to_cart.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sukjunub/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sukjunub/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SukjunubBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const SukjunubProductImageSlider(),

            // Product Detalis
            Padding(
              padding: const EdgeInsets.only(
                right: SukjunubSizes.defaultSpace,
                left: SukjunubSizes.defaultSpace,
                bottom: SukjunubSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Ratings & Share
                  const SukjunubRatingandShare(),

                  // Price, Title, Stock & Brand
                  const SukjunubProductMetaData(),

                  // Attributes
                  const SukjunubProductAttributes(),
                  const SizedBox(height: SukjunubSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Check Out'))),
                  const SizedBox(height: SukjunubSizes.spaceBtwSections),

                  // Description
                  const SukjunubSectionHeading(
                      title: 'Description', showActionButton: false,),
                  const SizedBox(height: SukjunubSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is more description of the variable items and can reach four lines',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: SukjunubColors.primary),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: SukjunubColors.primary),
                  ),
                  const SizedBox(height: SukjunubSizes.spaceBtwSections),
                  

                  // Reviews
                  const Divider(),
                  const SizedBox(height: SukjunubSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SukjunubSectionHeading(title: 'Reviews (199)', showActionButton: false,),
                      IconButton(onPressed: ()=> Get.to(()=> const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),

                  const SizedBox(height: SukjunubSizes.spaceBtwSections),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
