import 'package:flutter/material.dart';

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
        radius: 4,
      ),
    );
  }
}
