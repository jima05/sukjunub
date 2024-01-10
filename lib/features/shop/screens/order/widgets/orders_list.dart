import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubOrderListItems extends StatelessWidget {
  const SukjunubOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: SukjunubSizes.spaceBtwItems,),
      itemBuilder: (_,index) => SukjunubRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SukjunubSizes.md),
        backgroundColor: dark ? SukjunubColors.dark : SukjunubColors.light,
        child: Column(
                  mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
      
                // Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: SukjunubSizes.spaceBtwItems/2),
      
                // Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Processing',
                        style: Theme.of(context).textTheme.bodyLarge!
                            .apply(color: SukjunubColors.primary, fontSizeDelta: 1)),
                            Text('07 Mar 2024',
                        style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                // Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: SukjunubSizes.iconSm,)),
      
              ],
            ),
                      const SizedBox(height: SukjunubSizes.spaceBtwItems),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                  
                      // Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: SukjunubSizes.spaceBtwItems/2),
                  
                      // Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Order',
                              style: Theme.of(context).textTheme.labelMedium),
                                  Text('[#S124JH]',
                              style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                  
                      // Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: SukjunubSizes.spaceBtwItems/2),
                  
                      // Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                                  Text('15 Jan 2024',
                              style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ), 
    );
  }
}
