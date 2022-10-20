import 'package:get/get.dart';

Future<void> initDependencies() async {
  await _registerControllers();
  await _registerServices();
}

Future<void> _registerControllers() async {}

Future<void> _registerServices() async {
  // await Get.putAsync(() => NetworkStatus().init());
}
