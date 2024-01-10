import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/products/cart/coupon_widget.dart';
import 'package:sukjunub/common/widgets/success_screen/success_screen.dart';
import 'package:sukjunub/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sukjunub/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:sukjunub/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:sukjunub/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:sukjunub/navigation_menu.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SukjunubAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // items in Cart
              const SukjunubCartItems(showAddRemoveButtons: false),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Coupons Field
              const SukjunubCouponCode(),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Billing Section
              SukjunubRoundedContainer(
                padding: const EdgeInsets.all(SukjunubSizes.md),
                showBorder: true,
                backgroundColor:
                    dark ? SukjunubColors.black : SukjunubColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    SukjunubBillingAmountSection(),
                    SizedBox(height: SukjunubSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: SukjunubSizes.spaceBtwItems),

                    // Payment Method
                    SukjunubBillingPaymentSection(),
                    SizedBox(height: SukjunubSizes.spaceBtwItems),

                    // Address
                    SukjunubBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Check out Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: SukjunubImages.successfulPaymentIcon,
                  title: 'Payment Successful',
                  subtitle: 'Your Item be shipped soon',
                  onPressed: () => Get.offAll(()=> const NavigationMenu()),
                )),
            child: const Text('Checkout \$825.0')),
      ),
    );
  }
}
