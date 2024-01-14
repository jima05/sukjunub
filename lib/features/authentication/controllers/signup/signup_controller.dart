import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sukjunub/data/repositories/authentication/authentication_repository.dart';
import 'package:sukjunub/data/repositories/user/user_repository.dart';
import 'package:sukjunub/features/authentication/screens/signup/verify_email.dart';
import 'package:sukjunub/features/personalization/model/user_model.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/helpers/network_manager.dart';
import 'package:sukjunub/utils/popups/full_screen_loader.dart';
import 'package:sukjunub/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs; // Observable for hiding and showing password
  final privacyPolicy = true.obs; // Observable for Privacy Policy acceptance
  final email = TextEditingController(); // Controller for email Input
  final lastName = TextEditingController(); // Controller for lastname Input
  final username = TextEditingController(); // Controller for username Input
  final password = TextEditingController(); // Controller for password Input
  final firstName = TextEditingController(); // Controller for first name Input
  final phoneNumber =
      TextEditingController(); // Controller for phone number Input
  GlobalKey<FormState> signupFormkey =
      GlobalKey<FormState>(); // Form Key for Form Validation

  // -- SIGNUP
  signup() async {
    try {
      // Start Loading
      SukjunubFullScreenLoader.openLoadingDialog(
          'We are processin your information...',
          SukjunubImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SukjunubFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormkey.currentState!.validate()) {
        SukjunubFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        SukjunubLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create an account, you must have read and accepted the Terms of Use & Privacy Policy.',
        );
        return;
      }

      // Register user in the Firebase Authentication & Save user data in Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in thr Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userReporitory = Get.put(UserReporitory());
      await userReporitory.saveUserRecord(newUser);

      SukjunubFullScreenLoader.stopLoading();


      // Show Success Massege
      SukjunubLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! verify Email to continue,');

      // Move to verify email Screen
      Get.to(() =>  VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Remove Loader
      SukjunubFullScreenLoader.stopLoading();

      // Show some Generic Error to the User
      SukjunubLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
