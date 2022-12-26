import 'package:flutter/foundation.dart';

class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "http://task_app_api.test";
const kTestBaseApiUrl = "http://task_app_api.test";
const kIconButtonSplashRadius = 25.0;
const sizeIcon = 35.0;
