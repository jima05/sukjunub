import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/sizes.dart';
import 'package:sukjunub/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: SukjunubDeviceUtils.getAppBarHeight(), right: SukjunubSizes.defaultSpace, child: TextButton(onPressed: (){},child: const Text('Skip'), ));
  }
}

