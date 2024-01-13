import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/loaders/animation_loader.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/helpers/helper_functions.dart';

// A utility class for managing a full-screen loading dialog
class SukjunubFullScreenLoader {
  // Open full screen loading dialog with agiven text and animation.
  // This method doesn't retuen anything
  //
  // Parameters
  // - Text: The text to be displayed in the loading dialog.
  // - Animation: he lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, // Use Get.overLayContext for overLay Dialogs
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: SukjunubHelperFunctions.isDarkMode(Get.context!) ? SukjunubColors.dark : SukjunubColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), //Adjust the spacing as needed
              SukjunubAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }
  
// Stop the currently open loading dialog
// This method doesn't retuen anything
static stopLoading(){
  Navigator.of(Get.overlayContext!).pop(); // Close the dialog using the Navigatior
}
}

