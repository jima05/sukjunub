import 'package:flutter/material.dart';
import 'package:sukjunub/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:sukjunub/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll pages
          PageView(
            children: const [
              onBoardinPage(
                image: SukjunubImages.onBoardingImage1,
                title: SukjunubTexts.onBoardingTitle1,
                subTitle: SukjunubTexts.onBoardingSubTitle1,
              ),
              onBoardinPage(
                image: SukjunubImages.onBoardingImage2,
                title: SukjunubTexts.onBoardingTitle2,
                subTitle: SukjunubTexts.onBoardingSubTitle2,
              ),
              onBoardinPage(
                image: SukjunubImages.onBoardingImage3,
                title: SukjunubTexts.onBoardingTitle3,
                subTitle: SukjunubTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const onBoardingSkip(),

          // Dot Navigation smoothPageIndicator

          // Circular Button
        ],
      ),
    );
  }
}



