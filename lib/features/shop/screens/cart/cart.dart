import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/products/cart/add_remove_button.dart';
import 'package:sukjunub/common/widgets/products/cart/cart_icon.dart';
import 'package:sukjunub/common/widgets/texts/product_price_text.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SukjunubAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: SukjunubSizes.spaceBtwSections),
            itemCount: 4,
            itemBuilder: (_, index) => const Column(
              children: [
                SukjunubCartIcon(),
                SizedBox(height: SukjunubSizes.spaceBtwItems),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70),
                        // Add Remove Button
                        SukjunubProductQuantityWithAddAndRemoveButton(),
                      ],
                    ),
                    SukjunubProductPriceText(price: '256'),
                  ],
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout \$825.0')),
      ),
    );
  }
}
