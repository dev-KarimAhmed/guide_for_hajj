import 'package:flutter/material.dart';
import 'dart:math';

class RotatingCircle extends StatefulWidget {
  const RotatingCircle({super.key});

  @override
  _RotatingCircleState createState() => _RotatingCircleState();
}

class _RotatingCircleState extends State<RotatingCircle> {
  double changeFactor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TheCircle(
              changeFactor: changeFactor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    setState(() {
                      if (changeFactor > 1) {
                        changeFactor--;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    setState(() {
                      if (changeFactor < 13) {
                        changeFactor++;
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TheCircle extends StatelessWidget {
  const TheCircle({
    super.key,
    required this.changeFactor,
  });
  final double changeFactor;
  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: 6 / 12,
      duration: const Duration(milliseconds: 500),
      // angle: (changeFactor - 1) * 30 * pi / 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 172,
            height: 172,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffD4D3D3),
            ),
          ),
          const InsideCircle(),
          SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              color: AppColors.primaryColor,
              strokeWidth: 14,
              value: (changeFactor - 1) / 12,
            ),
          ),
          ...createDots(
            changeFactor: changeFactor,
          ),
        ],
      ),
    );
  }



















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
}

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
    this.dx = 0,
    required this.dy,
    required this.color,
  });
  final double dx;
  final double dy;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 5,
      ),
    );
  }
}

class InsideCircle extends StatelessWidget {
  const InsideCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

class AppColors {
  static const Color primaryColor = Color(0xff827847);
  static const Color secondaryColor = Color(0xffEAE9E4);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color blackColor = Color(0xff000000);
  static const Color transparentColor = Colors.transparent;
}
