import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

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
          )

          // Skip Button

          // Dot Navigation smoothPageIndicator

          // Circular Button
        ],
      ),
    );
  }
}

class onBoardinPage extends StatelessWidget {
  const onBoardinPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: SukjunubHelperFunctions.screenWidth() * 0.8,
            height: SukjunubHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: SukjunubSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
