import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../core/config/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  late VideoPlayerController _playerController;

  @override
  void initState() {
    super.initState();
    /*Future.delayed(const Duration(seconds: 8),
        () => Navigator.pushReplacementNamed(Get.context!, AppRoute.auth));*/
    _playerController =
        VideoPlayerController.asset("assets/images/mp4/radio_kara.mp4")
          ..initialize().then((_) {
            setState(() {});
          })
          ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    _playerController.play();

    await Future.delayed(const Duration(seconds: 5));

    Navigator.pushReplacementNamed(Get.context!, AppRoute.onboarding);
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _playerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _playerController.value.aspectRatio,
                  child: VideoPlayer(_playerController),
                )
              : Container(),
        ));
  }
}
