import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardinPage(
                image: SukjunubImages.onBoardingImage1,
                title: SukjunubTexts.onBoardingTitle1,
                subTitle: SukjunubTexts.onBoardingSubTitle1,
              ),
              OnBoardinPage(
                image: SukjunubImages.onBoardingImage2,
                title: SukjunubTexts.onBoardingTitle2,
                subTitle: SukjunubTexts.onBoardingSubTitle2,
              ),
              OnBoardinPage(
                image: SukjunubImages.onBoardingImage3,
                title: SukjunubTexts.onBoardingTitle3,
                subTitle: SukjunubTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
