import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/products/product_cards/ratings/rating_indicator.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(SukjunubImages.userProfileImage1),
                ),
                const SizedBox(
                  width: SukjunubSizes.spaceBtwItems,
                ),
                Text(
                  'Jima Benjamin',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          height: SukjunubSizes.spaceBtwItems,
        ),
        // Reviws
        Row(
          children: [
            const SukjunubRatingBarIndicator(rating: 4),
            const SizedBox(
              width: SukjunubSizes.spaceBtwItems,
            ),
            Text(
              '01 Dec, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems),

        const ReadMoreText(
          'This is a review of a product from one of the clients. He seems to be generally happy with the product but thinks it delivery took longer than expexted.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SukjunubColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SukjunubColors.primary),
        ),

        const SizedBox(height: SukjunubSizes.spaceBtwItems),

        //  Company Review
        SukjunubRoundedContainer(
          backgroundColor:
              dark ? SukjunubColors.darkerGrey : SukjunubColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(SukjunubSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sukjunub',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Dec, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: SukjunubSizes.spaceBtwItems),
                const ReadMoreText(
                  'Thank you for the review Jima Benjamin. We had a genral delay in shippment due to the floors of the previous week. We are working hard to increse our stores so that we avoid such inconviniences.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show Less',
                  trimCollapsedText: 'Show More',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: SukjunubColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: SukjunubColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwSections),

      ],
    );
  }
}
