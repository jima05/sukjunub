import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubRatingandShare extends StatelessWidget {
  const SukjunubRatingandShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: SukjunubSizes.spaceBtwItems / 2,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '199'),
                ],
              ),
            ),
          ],
        ),

        // Share Buton
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: SukjunubSizes.iconMd,
            )),
      ],
    );
  }
}
