import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/icons/circular_icon.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const SukjunubProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SukjunubCircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: SukjunubSizes.md,
          color: dark 
              ? SukjunubColors.white
              : SukjunubColors.black,
          backgroundColor:
              SukjunubHelperFunctions.isDarkMode(context)
                  ? SukjunubColors.darkerGrey
                  : SukjunubColors.light,
        ),
        const SizedBox(width: SukjunubSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: SukjunubSizes.spaceBtwItems),
        const SukjunubCircularIcon(
          icon: Iconsax.add,
          height: 32,
          width: 32,
          size: SukjunubSizes.md,
          color: SukjunubColors.white,
          backgroundColor: SukjunubColors.primary,
        ),
      ],
    );
  }
}
