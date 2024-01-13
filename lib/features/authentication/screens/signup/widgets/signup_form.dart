import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/features/authentication/controllers/signup/signup_controller.dart';
import 'package:sukjunub/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/validators/validation.dart';

class SukjunubSignupForm extends StatelessWidget {
  const SukjunubSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormkey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      SukjunubValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SukjunubTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: SukjunubSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      SukjunubValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SukjunubTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
          // Username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                SukjunubValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => SukjunubValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => SukjunubValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
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
                suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),),
              ),
            ),
          ),

          const SizedBox(height: SukjunubSizes.spaceBtwSections),
          // Terms & Conditions Checkbox
          const SukjunubTermsandConditionsCheckbox(),

          const SizedBox(height: SukjunubSizes.spaceBtwSections),

          // Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(SukjunubTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
