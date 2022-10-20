import 'package:radiokara/presenation/views/auth_view.dart';
import 'package:radiokara/presenation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/config/route.dart';
import 'core/config/theme.dart';
import 'presenation/views/onboarding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('fr', 'FR'),
      fallbackLocale: const Locale('fr', 'FR'),
      theme: AppTheme.lightTheme(null),
      initialRoute: AppRoute.splashScreen,
      getPages: [
        GetPage(name: AppRoute.splashScreen, page: () => const SplashScreen()),
        GetPage(name: AppRoute.onboarding, page: () => const Onboarding()),
        GetPage(name: AppRoute.auth, page: () => AuthView()),
      ],
    );
  }
}
