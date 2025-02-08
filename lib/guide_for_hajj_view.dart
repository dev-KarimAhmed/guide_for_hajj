import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuideForHajjView extends StatelessWidget {
  const GuideForHajjView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/frame.svg',
            ),
          ],
        ),
      ),
    );
  }
}
