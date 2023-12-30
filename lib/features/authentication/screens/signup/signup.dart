import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SukjunubSizes.defaultSpace),
          child: Column(
            children: [
              // Title
              Text(SukjunubTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Form
              Form(
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
                    // Signup Button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
