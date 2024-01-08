import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubSingleAddress extends StatelessWidget {
  const SukjunubSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return SukjunubRoundedContainer(
      padding: const EdgeInsets.all(SukjunubSizes.sm,),
            width: double.infinity,
            showBorder: true,
            backgroundColor: selectedAddress? SukjunubColors.primary.withOpacity(0.5) : Colors.transparent,
            borderColor: selectedAddress? Colors.transparent : dark? SukjunubColors.darkerGrey : SukjunubColors.grey,
            margin: const EdgeInsets.only(bottom: SukjunubSizes.spaceBtwItems),
            child: Stack(
              children: [
                Positioned(
                  right: 5,
                  top: 0,
                  child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress? dark? SukjunubColors.light : SukjunubColors.dark : null),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jima Benjamin',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,),
                    const SizedBox(height: SukjunubSizes.sm/2,),
                    const Text('+256-770-458-644',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                    const SizedBox(height: SukjunubSizes.sm/2,),
                    const Text('83245 Gedele Road, Central City, Juba',
                    softWrap: true,),
                  ],
                ),
              ],
            ),
          );
  }
}
