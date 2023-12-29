import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/styles/spacing_styles.dart';
import 'package:sukjunub/common/widgets/login_signup/form_divider.dart';
import 'package:sukjunub/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sukjunub/features/authentication/screens/login/widgets/login_header.dart';
import 'package:sukjunub/common/widgets/login_signup/social_buttons.dart';
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
              SukjunubLoginHeader(dark: dark),

              // Form
              SukjunubLoginForm(),

              // Divider
              SukjunubFormDivider(dividerText: SukjunubTexts.orSignInWith.capitalize!),

              const SizedBox(height: SukjunubSizes.spaceBtwSections),

              // Footer
              SukjunubSocialButtons()
            ],
          ), 
        ),
      ),
    );
  }
}


