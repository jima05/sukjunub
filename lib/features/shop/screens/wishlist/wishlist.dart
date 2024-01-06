import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/common/widgets/layouts/grid_layout.dart';
import 'package:sukjunub/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sukjunub/features/shop/screens/home/home.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SukjunubAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          SukjunubCircularIcon(icon: Iconsax.add, onPressesd: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              SukjunubGridLayout(itemCount: 5, itemBuilder: (_,index) => const SukjunubProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}