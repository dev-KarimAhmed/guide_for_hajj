import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:guide_for_hajj/models/image_data_model.dart';

import 'package:guide_for_hajj/models/models_list.dart';
import 'package:guide_for_hajj/widgets/custom_image_list.dart';
import 'package:guide_for_hajj/widgets/the_circle.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Stack(
            children: [
              AnimatedRotation(
                duration: const Duration(
                  milliseconds: 500,
                ),
                turns: (changeFactor - 1) / 12,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ...List.generate(imageDataList.length, (index) {
                      bool visited = index + 1 <= changeFactor;
                      bool current = index + 1 == changeFactor;
                      ImageDataModel imageDataModel = ImageDataModel(
                        offset: imageDataList[index].offset,
                        hasVisited: visited, // Set the dynamic state
                        isCurrent: current,
                      );
                      imageDataModel.setImageName = index;
                      return customImages(
                        imageData: imageDataModel,
                      )[index];
                    }),
                    TheCircle(
                      changeFactor: changeFactor,
                    ),
                  ],
                ),
              ),
              TheCircle(
                changeFactor: changeFactor,
              ),
            ],
          ),
          const SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  log(changeFactor.toString());
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
                  log(changeFactor.toString());

                  setState(() {
                    if (changeFactor < 12) {
                      changeFactor++;
                    }
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
