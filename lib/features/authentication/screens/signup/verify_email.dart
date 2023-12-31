import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/success_screen/success_screen.dart';
import 'package:sukjunub/features/authentication/screens/login/login.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give default equal space to all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image:
                    const AssetImage(SukjunubImages.deliveredEmailIllustration),
                width: SukjunubHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Title & Sub-title
              Text(SukjunubTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              Text("jimabenjamin4@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              Text(SukjunubTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () =>  SuccessScreen(
                      image: SukjunubImages.staticSuccessIllustration,
                      title: SukjunubTexts.yourAccountCreatedTitle,
                      subtitle: SukjunubTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(()=> const LoginScreen()),
                    ),
                  ),
                  child: const Text(SukjunubTexts.sContinue),
                ),
              ),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(SukjunubTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
