import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/features/authentication/controllers/signup/signup_controller.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

class SukjunubTermsandConditionsCheckbox extends StatelessWidget {
  const SukjunubTermsandConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SukjunubHelperFunctions.isDarkMode(context);
    final controller = SignupController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value))),
        const SizedBox(width: SukjunubSizes.spaceBtwInputFields),
        Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '${SukjunubTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${SukjunubTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark
                                ? SukjunubColors.white
                                : SukjunubColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? SukjunubColors.white
                                : SukjunubColors.primary,
                          )),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '${SukjunubTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${SukjunubTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark
                                ? SukjunubColors.white
                                : SukjunubColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? SukjunubColors.white
                                : SukjunubColors.primary,
                          )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
