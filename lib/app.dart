import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukjunub/bindings/general_bindings.dart';
import 'package:sukjunub/utils/constants/colors.dart';
import 'package:sukjunub/utils/theme/theme.dart';

// Use this class to initialize bindings, setup themes, any animations and more using material widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SukjunubTheme.lightTheme,
      darkTheme: SukjunubTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // Show loader or circular prograss indicator meanwhile authentication repo is deciding to show relevat screens
      home: const Scaffold(
          backgroundColor: SukjunubColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
