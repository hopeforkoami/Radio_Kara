import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/theme.dart';

class CustomReportItem extends StatelessWidget {
  const CustomReportItem(
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
        mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
