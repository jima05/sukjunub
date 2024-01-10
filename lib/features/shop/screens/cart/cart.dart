import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sukjunub/features/shop/screens/checkout/checkout.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(SukjunubSizes.defaultSpace),

        // Items In Cart
        child: SukjunubCartItems(),
      ),

      // Check out Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(()=> const CheckoutScreen()), child: const Text('Checkout \$825.0')),
      ),
    );
  }
}
