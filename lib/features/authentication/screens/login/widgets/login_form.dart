import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/features/authentication/controllers/login/login_controller.dart';
import 'package:sukjunub/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:sukjunub/features/authentication/screens/signup/signup.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/validators/validation.dart';

class SukjunubLoginForm extends StatelessWidget {
  const SukjunubLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SukjunubSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => SukjunubValidator.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: SukjunubTexts.email),
            ),

            const SizedBox(height: SukjunubSizes.spaceBtwInputFields),

            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => SukjunubValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: SukjunubTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),

            const SizedBox(height: SukjunubSizes.spaceBtwInputFields / 2),

            // Remember Me  & Forget Password
            Row(
              children: [
                // Remember Me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value)),
                    const Text(SukjunubTexts.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(SukjunubTexts.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: SukjunubSizes.spaceBtwSections),

            // Signin Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(SukjunubTexts.signIn),
              ),
            ),

            const SizedBox(height: SukjunubSizes.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(SukjunubTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
