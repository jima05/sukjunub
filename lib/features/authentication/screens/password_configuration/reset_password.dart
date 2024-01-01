import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: Get.back, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: Column(
          children: [
                // Image
              Image(
                image: const AssetImage(SukjunubImages.deliveredEmailIllustration),
                width: SukjunubHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Title & Sub-title
              Text(SukjunubTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              Text(SukjunubTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),


              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(SukjunubTexts.done),
                ),
              ),
              const SizedBox(height: SukjunubSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(SukjunubTexts.resendEmail),
                ),
              ),
       
          ],
        ),),
    );
  }
}