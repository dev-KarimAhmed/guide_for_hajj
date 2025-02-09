
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GuideForHajjView extends StatefulWidget {
  const GuideForHajjView({super.key});

  @override
  State<GuideForHajjView> createState() => _GuideForHajjViewState();
}

class _GuideForHajjViewState extends State<GuideForHajjView> {
  double rotationAngle = 0;
  double stepAngle = 1 / 12;

  void rotateLeft() {
    setState(() {
      rotationAngle -= stepAngle;
    });
  }

  void rotateRight() {
    setState(() {
      rotationAngle += stepAngle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Guide For Hajj',
          style: TextStyle(
            fontFamily: 'GraphikArabic',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/arrow_back.svg',
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
            color: Colors.teal, child: Image.asset("assets/images/group.png")),
      ),

      //  Column(
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           width: 400,
      //           height: 300,
      //           color: Colors.red,
      //         ),
      //         Positioned(
      //           // top: -150,
      //           // left: 30,
      //           child: Container(
      //             width: 434,
      //             height: 511,
      //             color: Colors.teal,
      //             child: Transform.translate(
      //               offset: const Offset(0.0, 0.0),
      //               child: Transform.rotate(
      //                 angle: 2 / pi,
      //                 child: SvgPicture.asset(
      //                   width: 434,
      //                   height: 511,
      //                   'assets/images/frame.svg',
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     // Align(
      //     //   alignment: Alignment.bottomCenter,
      //     //   heightFactor: 0.5,
      //     //   child: Transform.rotate(
      //     //     angle: rotationAngle,
      //     //     alignment: Alignment.center,
      //     //     child: SvgPicture.asset(
      //     //       'assets/images/frame.svg',
      //     //       fit: BoxFit.contain,
      //     //     ),
      //     //   ),
      //     // ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         CustomArrowButton(
      //           icon: Icons.arrow_back_ios_new,
      //           onPressed: () => rotateLeft(),
      //         ),
      //         const Text(
      //           "Overnight in Mina",
      //           style: TextStyle(
      //             fontSize: 24,
      //             fontFamily: "Poppins",
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //         CustomArrowButton(
      //           icon: Icons.arrow_forward_ios,
      //           onPressed: () => rotateRight(),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
