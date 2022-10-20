import 'package:perfect_volume_control/perfect_volume_control.dart';
import 'package:radiokara/core/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/config/color_schemes.g.dart';

class AuthView extends StatefulWidget {
  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  double currentvol = 0.5;

  @override
  void initState() {
    PerfectVolumeControl.hideUI =
        false; //set if system UI is hided or not on volume up/down
    Future.delayed(Duration.zero, () async {
      currentvol = await PerfectVolumeControl.getVolume();
      setState(() {
        //refresh UI
      });
    });

    PerfectVolumeControl.stream.listen((volume) {
      setState(() {
        currentvol = volume;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
        backgroundColor: lightColorScheme.primary,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: lightColorScheme.primary,
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.only(right: 10.0, top: 10),
            child: Icon(
              Icons.chevron_left_rounded,
              size: 50,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0, top: 10),
              child: Icon(
                Icons.download_for_offline_sharp,
                size: 50,
              ),
            )
          ],
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            height: Get.height,
            padding: EdgeInsets.only(top: Get.height * 0.09),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: lightColorScheme.onPrimary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: lightColorScheme.onPrimary,
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                        color: lightColorScheme.primary,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, -15),
                            blurRadius: 20,
                            color: const Color(0xFFDADADA).withOpacity(0.15),
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(115),
                          topRight: Radius.circular(115),
                          bottomLeft: Radius.circular(115),
                          bottomRight: Radius.circular(115),
                        ),
                      ),
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: lightColorScheme.onPrimary,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, -15),
                                blurRadius: 20,
                                color:
                                    const Color(0xFFDADADA).withOpacity(0.15),
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(110),
                              topRight: Radius.circular(110),
                              bottomLeft: Radius.circular(110),
                              bottomRight: Radius.circular(110),
                            ),
                          ),
                          child: Image.asset("assets/images/png/logo.png")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "Get Lucky",
                          style: TextStyle(
                              color: lightColorScheme.onSurface, fontSize: 25),
                        ),
                        Text(
                          "Daft Punk",
                          style: TextStyle(
                              color: lightColorScheme.outline, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.keyboard_double_arrow_left,
                              color: lightColorScheme.outline,
                              size: 35,
                            ),
                            onPressed: null),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: lightColorScheme.primary,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, -15),
                                blurRadius: 20,
                                color:
                                    const Color(0xFFDADADA).withOpacity(0.15),
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          child: Icon(
                            Icons.pause,
                            color: lightColorScheme.onPrimary,
                            size: 35,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.keyboard_double_arrow_right,
                              color: lightColorScheme.outline,
                              size: 35,
                            ),
                            onPressed: null),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("0"),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: Slider(
                            activeColor: lightColorScheme.primary,
                            inactiveColor:
                                lightColorScheme.primary.withOpacity(0.2),
                            value: currentvol,
                            onChanged: (newvol) {
                              currentvol = newvol;
                              PerfectVolumeControl.setVolume(
                                  newvol); //set new volume
                              setState(() {});
                            },
                            min: 0, //
                            max: 1,
                            divisions: 100,
                          ),
                        ),
                        const Text("10"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: lightColorScheme.onPrimary,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: lightColorScheme.primary,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -15),
                  blurRadius: 20,
                  color: const Color(0xFFDADADA).withOpacity(0.15),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: SafeArea(
                top: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: lightColorScheme.onPrimary,
                          size: 35,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(Icons.playlist_play_outlined,
                            color: lightColorScheme.onPrimary.withOpacity(0.4),
                            size: 35),
                        onPressed: null),
                    IconButton(
                        icon: Icon(Icons.polyline_sharp,
                            color: lightColorScheme.onPrimary.withOpacity(0.4),
                            size: 35),
                        onPressed: null),
                  ],
                )),
          ),
        ));
  }
}
