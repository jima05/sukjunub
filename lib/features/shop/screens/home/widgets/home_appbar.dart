import 'package:flutter/material.dart';
import 'package:sukjunub/common/widgets/appbar/appbar.dart';
import 'package:sukjunub/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class SukjunubHomeAppBar extends StatelessWidget {
  const SukjunubHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SukjunubAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SukjunubTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: SukjunubColors.grey)),
          Text(SukjunubTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: SukjunubColors.white)),
        ],
      ),
      actions: [
        SukjunubCartCounterIcon(
          onPressed: () {},
          iconColor: SukjunubColors.white,
        )
      ],
    );
  }
}
