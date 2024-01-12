import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sukjunub/features/authentication/screens/login/login.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // Called from main.dart on App launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show Relevant Scrrens
  screenRedirect() async {
    // Local Storage
    if (kDebugMode) {
      print('===============GET STORAGE Next Button===============');
      print(deviceStorage.read('isFirstTime'));
    }

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /*--------------Email & Password Sign-In---------*/

  // [Email Authentication] - SignIn
  // [Email Authentication] - Register
  // [reAuthentication] - reAuthentication User
  // [Email Verication] - Mail Verification
  // [Email Authentication] - Forget Password

  /*--------------Federated Identity & Social SignIn---------*/

  // [Google Authentication] - Google
  // [Facebook Authentication] - Facebook

  /*--------------./end Federated Identity & Social SignIn---------*/

  // [Logout User] - valid for any Authentication
  // [Delete User] - Remove user Auth & Firebase Account
}
