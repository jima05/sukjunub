import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/chips/choice_chip.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/texts/product_price_text.dart';
import 'package:sukjunub/common/widgets/texts/product_title_text.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubProductAttributes extends StatelessWidget {
  const SukjunubProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        //  Selected Attribute, Price & Description
        SukjunubRoundedContainer(
          padding: const EdgeInsets.all(SukjunubSizes.md),
          backgroundColor:
              dark ? SukjunubColors.darkerGrey : SukjunubColors.grey,
          child: Column(
            children: [
              // Title, Price & Stock Status
              Row(
                children: [
                  const SukjunubSectionHeading(
                    title: 'Variation', 
                    showActionButton: false,
                  ),
                  const SizedBox(width: SukjunubSizes.spaceBtwItems),

                  // Variation
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Price Title
                      const SukjunubProductTitleText(
                        title: 'Price',
                        smallSize: true,
                      ),
                      Row(
                        children: [
                          // Actual Price
                          Text(
                            '\$250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: SukjunubSizes.spaceBtwItems),

                          // Sale Price
                          const SukjunubProductPriceText(
                            price: '175',
                            isLarge: true,
                          ),
                          const SizedBox(
                              width: SukjunubSizes.spaceBtwItems / 1.5),
                        ],
                      ),
                      // Stock
                      Row(
                        children: [
                          const SukjunubProductTitleText(title: 'Stock'),
                          const SizedBox(width: SukjunubSizes.spaceBtwItems),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const SukjunubProductTitleText(
                title:
                    'This is the product description of the iten and it can go up to four lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SukjunubSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SukjunubChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                SukjunubChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                SukjunubChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                SukjunubChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SukjunubSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SukjunubChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                SukjunubChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                SukjunubChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
