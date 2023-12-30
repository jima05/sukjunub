import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class SukjunubSignupForm extends StatelessWidget {
  const SukjunubSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SukjunubTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                  width: SukjunubSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
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
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: SukjunubSizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: SukjunubTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
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
    
          const SizedBox(height: SukjunubSizes.spaceBtwSections),
          // Terms & Conditions Checkbox
          const SukjunubTermsandConditionsCheckbox(),
    
          const SizedBox(height: SukjunubSizes.spaceBtwSections),
    
          // Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(SukjunubTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
