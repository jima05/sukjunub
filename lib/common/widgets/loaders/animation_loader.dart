import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/constants/sizes.dart';

// A widget for displaying an animated loading indicator with optional text and action button
class SukjunubAnimationLoaderWidget extends StatelessWidget {
  // Default constructor for the SukjunubAnimatedWidget
  //
  // Parameters
  // - text: The text to be displayed below the animation
  // - animation: The path to the lottie animation file
  // - showAction: Whether to show an action button below the text
  // - actionText: The text to be displayed on the action button
  // - onActionPressed: Callback function to be executed when the action button is pressed
  const SukjunubAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction=false,
      this.actionText,
      this.onActionPressed,
      });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width:
                  MediaQuery.of(context).size.width * 0.8), // Display animation
          const SizedBox(height: SukjunubSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: SukjunubSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: SukjunubColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: SukjunubColors.light),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
