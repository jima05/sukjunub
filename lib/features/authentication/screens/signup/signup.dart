import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/login_signup/form_divider.dart';
import 'package:sukjunub/common/widgets/login_signup/social_buttons.dart';
import 'package:sukjunub/features/authentication/screens/signup/widgets/signup_form.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(SukjunubTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Form
              const SukjunubSignupForm(),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),


              // Divider
              SukjunubFormDivider(
                  dividerText: SukjunubTexts.orSignUpWith.capitalize!),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Social Buttons
              const SukjunubSocialButtons(),
              const SizedBox(height: SukjunubSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

