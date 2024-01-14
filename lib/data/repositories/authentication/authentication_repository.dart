import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sukjunub/features/authentication/screens/login/login.dart';
import 'package:sukjunub/features/authentication/screens/onboarding/onboarding.dart';
import 'package:sukjunub/features/authentication/screens/signup/verify_email.dart';
import 'package:sukjunub/navigation_menu.dart';
import 'package:sukjunub/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:sukjunub/utils/exceptions/firebase_exceptions.dart';
import 'package:sukjunub/utils/exceptions/format_exceptions.dart';
import 'package:sukjunub/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart on App launch
  @override
  void onReady() {
    // Remove Native spalsh Screen
    FlutterNativeSplash.remove();
    //Then redirect to the appropriate screen
    screenRedirect();
  }

  // Function to show Relevant Scrrens
  screenRedirect() async {
  final user = _auth.currentUser;
// If user is not null
    if (user != null) {
      // if user is verified
      if (user.emailVerified) {
        // Navigate to Nagigation Menu(Home)
        Get.offAll(() => const NavigationMenu());
      } else {
        // If user is not Verified, Navigate to the Verification Screen
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull('isFirstTime', true);
      //Check if it is the first time launching the app
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen()) // Loginscreen if NOT
          : Get.offAll(() => const OnBoardingScreen());//Onboarding if 
    }
  }

  /*--------------Email & Password Sign-In---------*/

  // [Email Authentication] - SignIn
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SukjunubFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SukjunubFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SukjunubFormatException();
    } on PlatformException catch (e) {
      throw SukjunubPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


  // [Email Authentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SukjunubFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SukjunubFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SukjunubFormatException();
    } on PlatformException catch (e) {
      throw SukjunubPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // [Email Verication] - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw SukjunubFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SukjunubFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SukjunubFormatException();
    } on PlatformException catch (e) {
      throw SukjunubPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // [reAuthentication] - reAuthentication User

  // [Email Authentication] - Forget Password

  /*--------------Federated Identity & Social SignIn---------*/

  // [Google Authentication] - Google
  // [Facebook Authentication] - Facebook

  /*--------------./end Federated Identity & Social SignIn---------*/

  // [Logout User] - valid for any Authentication
  Future<void>logout() async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=>const LoginScreen());
    }on FirebaseAuthException catch (e) {
      throw SukjunubFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SukjunubFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SukjunubFormatException();
    } on PlatformException catch (e) {
      throw SukjunubPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
  // [Delete User] - Remove user Auth & Firebase Account
}
