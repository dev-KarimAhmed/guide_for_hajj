 import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guide_for_hajj/core/colors.dart';
import 'package:guide_for_hajj/widgets/custom_dot.dart';

List<Widget> createDots({required double changeFactor}) {
    return List.generate(
      12,
      (index) {
        int i = index + 1;
        double angle = (2 * pi / 12) * index; // حساب الزاوية لكل نقطة
        double dx = 80 * cos(angle + 11); // إحداثي X
        double dy = 80 * sin(angle + 11); // إحداثي Y
        return CustomDot(
          dx: dx,
          dy: dy,
          color: i <= changeFactor
              ? AppColors.backgroundColor
              : AppColors.blackColor,
        );
      },
    );
  }