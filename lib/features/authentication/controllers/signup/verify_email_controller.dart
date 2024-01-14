import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sukjunub/common/widgets/success_screen/success_screen.dart';
import 'package:sukjunub/data/repositories/authentication/authentication_repository.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/constants/text_strings.dart';
import 'package:sukjunub/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send email whenever verify screen appears and & se timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    checkEmailVerificationStatus();
    super.onInit();
  }

  // Send Email Verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      SukjunubLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please Check your inbox and verify your email');
    } catch (e) {
      SukjunubLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Timer to auto redirect on verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            image: SukjunubImages.successfullyRegisterAnimation,
            title: SukjunubTexts.yourAccountCreatedTitle,
            subtitle: SukjunubTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  // Manually check if Email is verified
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(() => SuccessScreen(
            image: SukjunubImages.successfullyRegisterAnimation,
            title: SukjunubTexts.yourAccountCreatedTitle,
            subtitle: SukjunubTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
    }
  }
}
