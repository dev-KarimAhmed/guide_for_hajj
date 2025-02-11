import 'package:flutter/material.dart';
import 'package:guide_for_hajj/core/colors.dart';
import 'package:guide_for_hajj/functions/create_dots.dart';
import 'package:guide_for_hajj/widgets/inside_circle.dart';

class TheCircle extends StatelessWidget {
  const TheCircle({
    super.key,
    required this.changeFactor, required this.hasVisitedOrCurrent,
  });
  final double changeFactor;
  final bool hasVisitedOrCurrent;
  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: 1 / 2,
      duration: const Duration(milliseconds: 500),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Big full circle
          Container(
            width: 172,
            height: 172,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffD4D3D3),
            ),
          ),
          // Big Inside White Circle
          const InsideCircle(),
          // Thick border , increase by change the value
          SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              color: AppColors.primaryColor,
              strokeWidth: 12,
              value: changeFactor / 12,
            ),
          ),
          // Function to create the dots and give their color according to changeFactor
          ...createDots(
            hasVisitedOrCurrent: hasVisitedOrCurrent,
            changeFactor: changeFactor,
          ),
        ],
      ),
    );
  }
}
