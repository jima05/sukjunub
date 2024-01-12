import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/firebase_options.dart';

import 'app.dart';

Future<void> main() async {


  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}

