import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';

import '../../core/config/color_schemes.g.dart';
import '../../core/config/route.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () {
        Navigator.pushReplacementNamed(Get.context!, AppRoute.auth);
      },
      onSkip: () {
        Navigator.pushReplacementNamed(Get.context!, AppRoute.auth);
      },
      skipText: "Passer",
      indicatorType: IndicatorType.CIRCLE,
      textColor: Colors.white,
      footerBgColor: lightColorScheme.primary,
      activeDotColor: Colors.white,
      inactiveDotColor: lightColorScheme.primaryContainer,
      footerRadius: 25.0,
      slides: [
        IntroScreen(
          title: "Information",
          imageAsset: 'assets/images/png/1.png',
          description:
              'Recevez les informations de la radio Kara sur votre téléphone',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: "Responsable de zone",
          headerBgColor: Colors.white,
          imageAsset: 'assets/images/png/2.png',
          description:
              "Nos journaliste au micro vous transmettent les dernières informations",
        ),
        IntroScreen(
          title: "Alertez partout",
          headerBgColor: Colors.white,
          imageAsset: 'assets/images/png/3.png',
          description: "Pour vous divertir, ecouter nos émitions musicales",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}
