import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_for_hajj/models/image_data_model.dart';

import 'package:guide_for_hajj/models/models_list.dart';
import 'package:guide_for_hajj/widgets/custom_arrow_button.dart';
import 'package:guide_for_hajj/widgets/custom_image_list.dart';
import 'package:guide_for_hajj/widgets/the_circle.dart';

class HajjGuide extends StatefulWidget {
  const HajjGuide({super.key});

  @override
  _HajjGuideState createState() => _HajjGuideState();
}

class _HajjGuideState extends State<HajjGuide> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  double changeFactor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: const Image(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
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
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
              ],
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomIconButton(
                icon: Icons.arrow_back_ios_new,
                onPressed: () {
                  setState(() {
                    if (changeFactor > 1) {
                      changeFactor--;
                    }
                  });
                },
              ),
              Text(
                changeFactor == 1
                    ? "Overnight in Mina"
                    : "Round ${changeFactor.toInt()}",
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomIconButton(
                icon: Icons.arrow_forward_ios,
                onPressed: () {
                  setState(() {
                    if (changeFactor < 12) {
                      changeFactor++;
                    }
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 220,
              child: Card(
                margin: const EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus viverra neque, vel ornare est convallis id. Vestibulum mollis viverra nunc, vitae condimentum dolor tristique sed. Phasellus quis varius nulla.",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          icon: Icons.bookmark_border_rounded,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomIconButton(
                          icon: Icons.share,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
