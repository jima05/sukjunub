import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/device/device_utility.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SukjunubDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SukjunubSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor:  dark ? SukjunubColors.light: SukjunubColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
