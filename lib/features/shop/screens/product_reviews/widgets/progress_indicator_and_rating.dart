
import 'package:flutter/material.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/device/device_utility.dart';

class SukjunubRatingProgressIndicator extends StatelessWidget {
  const SukjunubRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: SukjunubDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: SukjunubColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor:
                    const AlwaysStoppedAnimation(SukjunubColors.primary),
              ),
            )),
      ],
    );
  }
}
