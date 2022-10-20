import 'package:flutter/material.dart';
import '../../core/config/theme.dart';

class CustomItemType extends StatelessWidget {
  const CustomItemType({Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: AppTheme.appcolor.shade300,
            size: 40,
          ),
          const Spacer(),
          Text(label),
        ],
      ),
    );
  }
}
