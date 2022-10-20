import 'package:logger/logger.dart';

final _logInstance = Logger();

// ignore: avoid_classes_with_only_static_members
class DebugLogUtils {
  static Logger get logger => _logInstance;
}