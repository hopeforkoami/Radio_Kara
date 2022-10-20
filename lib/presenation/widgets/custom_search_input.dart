import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/strings.dart';
import '../../core/config/theme.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: Strings.filterList,
          prefixIcon: Icon(
            Icons.search,
            color: AppTheme.appcolor,
          ),
        ),
      ),
    );
  }
}
