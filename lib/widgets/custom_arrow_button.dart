
import 'package:flutter/material.dart';

class CustomArrowButton extends StatelessWidget {
  const CustomArrowButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xffEAE9E4),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: const Color(0xff827847),
        ),
      ),
    );
  }
}
