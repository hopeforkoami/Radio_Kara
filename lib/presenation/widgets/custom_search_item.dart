import 'package:radiokara/core/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/theme.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem(
      {Key? key,
      required this.title,
      required this.date,
      required this.heure,
      required this.city,
      required this.typeImage})
      : super(key: key);

  final String title;
  final String typeImage;
  final String city;
  final String date;
  final String heure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(typeImage), fit: BoxFit.cover)),
          ),
          const VerticalDivider(
            color: AppTheme.appcolor,
            thickness: 2,
            endIndent: 10,
            indent: 10,
          ),
          SizedBox(
            width: Get.width * 0.5,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                city,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
