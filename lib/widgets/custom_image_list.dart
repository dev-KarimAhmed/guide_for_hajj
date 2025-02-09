  import 'package:flutter/material.dart';
import 'package:guide_for_hajj/models/image_data_model.dart';
import 'package:guide_for_hajj/widgets/custom_image.dart';

List<Widget> customImages(
          {required ImageDataModel imageData}) =>
      [
        Positioned(
          top: 120,
          left: 40,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          top: 114,
          left: 92,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          top: 100,
          left: 110,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          top: 40,
          left: 110,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          top: -50,
          left: 110,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          top: -110,
          left: 95,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: 120,
          right: 40,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: 114,
          right: 92,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: 100,
          right: 110,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: 40,
          right: 115,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: -50,
          right: 110,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
        Positioned(
          bottom: -110,
          right: 95,
          child: CustomImage(
            offset: imageData.offset,
            hasVisited: imageData.hasVisited,
            image: imageData.imageName,
            isCurrent: imageData.isCurrent,
          ),
        ),
      ];