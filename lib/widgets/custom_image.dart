import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.isCurrent,
    required this.hasVisited,
    required this.image,
    required this.offset,
  });
  final bool isCurrent;
  final bool hasVisited;
  final String image;
  final Offset offset;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isCurrent ? 1.42 : 1,
      child: Transform.translate(
        offset: isCurrent ? offset : const Offset(0, 0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400,),
          foregroundDecoration: !hasVisited
              ? const BoxDecoration(
                  color: Colors.grey,
                  backgroundBlendMode: BlendMode.saturation,
                )
              : null,
          child: Image.asset(
            "assets/images/$image.png",
          ),
        ),
      ),
    );
  }
}
