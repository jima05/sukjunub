import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/products/cart/add_remove_button.dart';
import 'package:sukjunub/common/widgets/products/cart/cart_item.dart';
import 'package:sukjunub/common/widgets/texts/product_price_text.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubCartItems extends StatelessWidget {
  const SukjunubCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: SukjunubSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const SukjunubCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: SukjunubSizes.spaceBtwItems),
          // Add and Remove Row with Total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(width: 70),
                    // Add Remove Button
                    SukjunubProductQuantityWithAddAndRemoveButton(),
                  ],
                ),
                // Product Total Price
                SukjunubProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
