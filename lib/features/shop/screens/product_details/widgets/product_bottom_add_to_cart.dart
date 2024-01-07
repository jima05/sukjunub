import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubBottomAddToCart extends StatelessWidget {
  const SukjunubBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SukjunubSizes.defaultSpace,
          vertical: SukjunubSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? SukjunubColors.darkGrey : SukjunubColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(SukjunubSizes.cardRadiusLg),
          topRight: Radius.circular(SukjunubSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SukjunubCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: SukjunubColors.darkGrey,
                width: 40,
                height: 40,
                color: SukjunubColors.white,
              ),
              const SizedBox(width: SukjunubSizes.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: SukjunubSizes.spaceBtwItems),
              const SukjunubCircularIcon(
                icon: Iconsax.add,
                backgroundColor: SukjunubColors.black,
                width: 40,
                height: 40,
                color: SukjunubColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(SukjunubSizes.md),
                backgroundColor: SukjunubColors.black,
                side: const BorderSide(color: SukjunubColors.black),
              ),
              child: const Text('Add To Cart'))
        ],
      ),
    );
  }
}
