import 'package:flutter/material.dart';
import 'package:guide_for_hajj/core/colors.dart';

class InsideCircle extends StatelessWidget {
  const InsideCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Big Inside White Circle
    return Container(
      width: 145,
      height: 145,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.transparentColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.primaryColor,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
