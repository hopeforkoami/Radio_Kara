import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/theme.dart';

class CustomEmergencyItem extends StatelessWidget {
  const CustomEmergencyItem(
      {Key? key, required this.title, required this.date, required this.heure})
      : super(key: key);

  final String title;
  final String date;
  final String heure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [

          SizedBox(
            width: Get.width * 0.5,
            child: Column(children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(date),
                  const Spacer(),
                  Text(heure),
                ],
              ),
            ]),
          ),
          const VerticalDivider(
            color: AppTheme.appcolor,
            thickness: 2,
            endIndent: 10,
            indent: 10,
          ),
          SizedBox(
            width: Get.width * 0.2,
            child: Icon(
              Icons.remove_red_eye_rounded,
              color: AppTheme.appcolor.shade400,
              size: 35,
            ),
          ),

        ],
      ),
    );
  }
}
