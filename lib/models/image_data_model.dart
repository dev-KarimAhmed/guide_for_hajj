import 'package:flutter/material.dart';

class ImageDataModel {
final bool isCurrent;
 final bool hasVisited;
  String? _imageName;
  final Offset offset;

  ImageDataModel({required this.offset ,   this.hasVisited = false,
    this.isCurrent = false,});

  set setImageName(int index) {
    switch (index) {
      case 0:
        _imageName = "one";
        break;
      case 1:
        _imageName = "two";
        break;
      case 2:
        _imageName = "three";
        break;
      case 3:
        _imageName = "four";
        break;
      case 4:
        _imageName = "five";
        break;
      case 5:
        _imageName = "six";
        break;
      case 6:
        _imageName = "seven";
        break;
      case 7:
        _imageName = "eight";
        break;
      case 8:
        _imageName = "nine";
        break;
      case 9:
        _imageName = "ten";
        break;
      case 10:
        _imageName = "eleven";
        break;
      case 11:
        _imageName = "tweleve";
        break;
      default:
        throw ArgumentError("Invalid index: $index. Must be between 0 and 11.");
    }
  }

  String get imageName => _imageName ?? "default";
}
