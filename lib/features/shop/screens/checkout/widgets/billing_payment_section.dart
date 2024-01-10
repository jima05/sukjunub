import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/common/widgets/texts/section_heading.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubBillingPaymentSection extends StatelessWidget {
  const SukjunubBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SukjunubSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: (){},
        ),
        const SizedBox(height: SukjunubSizes.spaceBtwItems / 2),
        Row(
          children: [
            SukjunubRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SukjunubColors.light : SukjunubColors.white,
              padding: const EdgeInsets.all(SukjunubSizes.sm),
              child: const Image(image: AssetImage(SukjunubImages.paypal), fit: BoxFit.contain,),
            ),
        const SizedBox(width: SukjunubSizes.spaceBtwItems / 2),
        Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),

          ],
        ),
      ],
    );
  }
}
