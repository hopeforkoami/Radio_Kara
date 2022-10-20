import 'package:radiokara/core/services/init_service.dart';
import 'package:flutter/material.dart';

class InitApp {
  Future<void> setUp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initDependencies();
  }

  Future<void> _initDependencies() async {
    await initDependencies();
  }
}
