import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(SukjunubTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: SukjunubSizes.spaceBtwItems),
            Text(SukjunubTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: SukjunubSizes.spaceBtwSections * 2),

            // Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: SukjunubTexts.email, prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: SukjunubSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(()=> const ResetPassword()),
                child: const Text(SukjunubTexts.submit),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
