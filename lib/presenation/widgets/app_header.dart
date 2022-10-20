import 'package:flutter/material.dart';

import '../../core/config/app_config.dart';
import '../../core/config/strings.dart';
import '../../core/config/theme.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key, required this.subtitle, this.onTap, required this.displayIcon, required this.addPowerIcon})
      : super(key: key);

  final String subtitle;
  final bool displayIcon;
  final bool addPowerIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("assets/images/png/logo.png"),
                fit: BoxFit.cover)
        ),
      ),
      title: const Text(
        Strings.crisisMap,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
      subtitle: subtitle == '' ? const SizedBox.shrink() : Text(subtitle),
      trailing: (displayIcon)? GestureDetector(
        onTap: onTap,
        child:(addPowerIcon)?Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.power_settings_new,
              size: 30,
              color: AppTheme.appcolor.shade400,
            ),
          ),
        ): Icon(Icons.list_outlined),
      ): null,
    );
  }
}
