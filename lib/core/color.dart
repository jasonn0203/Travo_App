import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Color(0xff6357CC);
  static const Color secondaryColor = Color(0xff8F67E8);
  static const Color orangeColor = Color(0xffFE9C5E);

  static const Color subtextColor = Color(0xff636363);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color textColor = Color(0xff313131);
  static const Color lightPinkColor = Color(0xffF77777);
  static const Color lightTealColor = Color(0xff3EC8BC);

  static const Color mainBackgroundColor = Color(0xffF0F2F6);
}

class AppGradient {
  static const Gradient mainGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [AppColor.secondaryColor, AppColor.primaryColor]);
}
