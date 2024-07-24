import 'package:flutter/material.dart';
import 'package:travel_app/src/core/functions/app_color.dart';

class Const {
  Const._();
  static String title = 'Travel';
  static String baseUrl = '';
  static BoxShadow shadow = BoxShadow(
    color: AppColor.dustyGray.withOpacity(0.15), // Gölgenin rengi
    spreadRadius: 0, // Gölgenin yayılma yarıçapı
    blurRadius: 21, // Gölgenin bulanıklık yarıçapı
    offset: Offset(2, 2), // X ve Y eksenindeki ofset
  );
}
