import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sukjunub/common/styles/spacing_styles.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SukjunubSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Logo, Title, Sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark
                        ? SukjunubImages.lightAppLogo
                        : SukjunubImages.darkAppLogo),
                  ),
                  Text(
                    SukjunubTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: SukjunubSizes.sm,
                  ),
                  Text(
                    SukjunubTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              // Form
              Form(
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
