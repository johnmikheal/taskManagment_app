import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_6/core/colors_manager.dart';

class AppTextStyles{
 static TextStyle appBatTextStyle = TextStyle(
    color: ColorsManager.whiteColore,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
 static TextStyle cardTitleTextStyle = TextStyle(
 fontSize: 18,
 fontWeight: FontWeight.w700,
 color: Color(0xFF5D9CEC));
 static TextStyle settingsItemTextStyle = TextStyle(
 fontSize: 16,
 fontWeight: FontWeight.w700,
 color: Color(0xFF303030));
}