import 'package:flutter/material.dart';
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
                    image: AssetImage( dark ? SukjunubImages.lightAppLogo : SukjunubImages.darkAppLogo),
                  ),
                  Text(SukjunubTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: SukjunubSizes.sm,),
                  Text(SukjunubTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
