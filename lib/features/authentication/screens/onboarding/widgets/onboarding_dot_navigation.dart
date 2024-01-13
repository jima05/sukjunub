import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sukjunub/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/device/device_utility.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SukjunubDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SukjunubSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SukjunubColors.light : SukjunubColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
