import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/features/authentication/screens/signup/signup.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class SukjunubLoginForm extends StatelessWidget {
  const SukjunubLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SukjunubSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: SukjunubTexts.email),
            ),
    
            const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
    
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: SukjunubTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
    
            const SizedBox(
                height: SukjunubSizes.spaceBtwInputFields / 2),
    
            // Remember Me  & Forget Password
            Row(
              children: [
                // Remember Me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(SukjunubTexts.rememberMe),
                  ],
                ),
    
                // Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(SukjunubTexts.forgetPassword),
                ),
              ],
            ),
    
            const SizedBox(height: SukjunubSizes.spaceBtwSections),
    
            // Signin Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(SukjunubTexts.signIn),
              ),
            ),
    
            const SizedBox(height: SukjunubSizes.spaceBtwItems),
    
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(()=> const SignupScreen()),
                child: const Text(SukjunubTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

