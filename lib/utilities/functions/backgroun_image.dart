import 'package:flutter/material.dart';

class BackgrounImage {
  static AssetImage backgroundImageInTime() {
    // الحصول على الوقت الحالي
    final currentTime = DateTime.now().hour;

    // تحديد الصورة بناءً على الوقت
    final isDayTime = currentTime >= 6 && currentTime < 18;
    final backgroundImage = isDayTime
        ? const AssetImage('assets/images/img_morning.jpg', bundle: null)
        : const AssetImage('assets/images/img_night.jpg', bundle: null);
    return backgroundImage;
  }
}
