import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/images/rounded_image.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: SukjunubSizes.spaceBtwSections),
            itemCount: 4,
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    // Image
                    SukjunubRoundedImage(
                      imageUrl: SukjunubImages.productImage1,
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(SukjunubSizes.sm),
                      backgroundColor:
                          SukjunubHelperFunctions.isDarkMode(context)
                              ? SukjunubColors.darkerGrey
                              : SukjunubColors.light,
                    ),
                const SizedBox(height: SukjunubSizes.spaceBtwItems),

                // Title , Price & Size

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
