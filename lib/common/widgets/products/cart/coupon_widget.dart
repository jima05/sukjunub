import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubCouponCode extends StatelessWidget {
  const SukjunubCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    return SukjunubRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? SukjunubColors.dark : SukjunubColors.white,
      padding: const EdgeInsets.only(
        top: SukjunubSizes.sm,
        bottom: SukjunubSizes.sm,
        left: SukjunubSizes.md,
        right: SukjunubSizes.sm,
      ),
      child: Row(
        children: [
          // Coupon Text Field
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          // Coupon Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? SukjunubColors.white.withOpacity(0.5)
                    : SukjunubColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
