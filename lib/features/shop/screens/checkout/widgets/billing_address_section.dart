import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

class SukjunubBillingAddressSection extends StatelessWidget {
  const SukjunubBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SukjunubSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Jima Benjamin', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(height: SukjunubSizes.spaceBtwItems),
            Text('+256-770-458-644',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(height: SukjunubSizes.spaceBtwItems),
            Expanded(
              child: Text('Gudelle, Juba,Central Equatoria',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ],
    );
  }
}
