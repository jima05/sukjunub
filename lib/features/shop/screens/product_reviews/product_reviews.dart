import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/products/product_cards/ratings/rating_indicator.dart';
import 'package:sukjunub/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:sukjunub/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: const SukjunubAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'This is he Reviews and Ratings Page for each product'),
              const SizedBox(
                height: SukjunubSizes.spaceBtwItems,
              ),

              // Overall Product Rating
              const SukjunubOverallProductRating(),
              const SukjunubRatingBarIndicator(rating: 3.5,),
              Text('11,345', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: SukjunubSizes.spaceBtwSections,),


              // User Review List
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

