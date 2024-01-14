import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sukjunub/data/repositories/authentication/authentication_repository.dart';
import 'package:sukjunub/utils/constants/image_strings.dart';
import 'package:sukjunub/utils/helpers/network_manager.dart';
import 'package:sukjunub/utils/popups/full_screen_loader.dart';
import 'package:sukjunub/utils/popups/loaders.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    email.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  // Email and Password Signin
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      SukjunubFullScreenLoader.openLoadingDialog(
          'Logging you in ...', SukjunubImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SukjunubFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        SukjunubFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if remenber Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login User using Email & Password Authentication
      // ignore: unused_local_variable
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      SukjunubFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      SukjunubFullScreenLoader.stopLoading();
      SukjunubLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
