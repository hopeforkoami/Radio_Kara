import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor appcolor =
      MaterialColor(_appcolorPrimaryValue, <int, Color>{
    50: Color(0xFFFFE8E9),
    100: Color(0xFFFEC7C8),
    200: Color(0xFFFDA1A3),
    300: Color(0xFFFC7B7E),
    400: Color(0xFFFC5F63),
    500: Color(_appcolorPrimaryValue),
    600: Color(0xFFFA3D40),
    700: Color(0xFFFA3437),
    800: Color(0xFFF92C2F),
    900: Color(0xFFF81E20),
  });
  static const int _appcolorPrimaryValue = 0xFFFB4347;

  static const MaterialColor appcolorAccent =
      MaterialColor(_appcolorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_appcolorAccentValue),
    400: Color(0xFFFFC7C7),
    700: Color(0xFFFFADAE),
  });
  static const int _appcolorAccentValue = 0xFFFFFAFA;

  static ThemeData lightTheme(ColorScheme? lightColorScheme) {
    ColorScheme scheme = lightColorScheme ??
        ColorScheme.fromSeed(
          seedColor: const Color(0xFFFB4347),
        );

    return ThemeData(
      primaryColor: const Color(_appcolorPrimaryValue),
      fontFamily: 'Abel',
      colorScheme: scheme,
      primarySwatch: appcolor,
    );
  }
}
