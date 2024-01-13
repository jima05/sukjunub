import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sukjunub/features/personalization/model/user_model.dart';
import 'package:sukjunub/utils/exceptions/firebase_exceptions.dart';
import 'package:sukjunub/utils/exceptions/format_exceptions.dart';
import 'package:sukjunub/utils/exceptions/platform_exceptions.dart';

class UserReporitory extends GetxController {
  static UserReporitory get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //  Function to save user data in firesore
  Future<void> saveUserRecord(UserModel user) async {
    try{
      await _db.collection('Users').doc(user.id).set(user.toJson());
    }on FirebaseException catch (e) {
      throw SukjunubFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SukjunubFormatException();
    } on PlatformException catch (e) {
      throw SukjunubPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // Function to fetch user details based on user ID

  // Function to update user data in Firestore

  // Update any field in specific Users Collection


}
