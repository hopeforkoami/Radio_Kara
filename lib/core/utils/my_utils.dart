import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../config/strings.dart';
import '../config/theme.dart';

Future<bool> showExitPopup(context) async{
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Voulez vous vraiment quitter?"),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');
                          exit(0);
                        },
                        child: Text("Oui"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade800),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('no selected');
                            Navigator.of(context).pop();
                          },
                          child: Text("Non", style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}

Widget buildIncidentBnt( String imageUrl,  String titleString, String description){
  return Container(
      height: 120.0,
      child:  Stack(
        children: <Widget>[
          Container(
            height: 124.0,
            width: Get.width ,
            margin:  const EdgeInsets.only(left: 46.0),
            padding: const EdgeInsets.only(left: 60, right: 5.0, top: 10.0),
            decoration:  BoxDecoration(
              color: AppTheme.appcolor.shade300,
              shape: BoxShape.rectangle,
              borderRadius:  BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset:  Offset(0.0, 10.0),),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleString,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:  EdgeInsets.symmetric(
                vertical: 16.0
            ),
            alignment: FractionalOffset.centerLeft,
            width: 92.0,
            height: 92.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(

                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover)
            ),
          ),
        ],
      )
  );
}
