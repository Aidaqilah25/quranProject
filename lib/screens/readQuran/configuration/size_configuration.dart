import 'package:flutter/material.dart';

class SizeConfiguration {
  late double screenHeight;
  late double screenWidth;
  late double defaultSize;
  late MediaQueryData _mediaQueryData;
  late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = (orientation == Orientation.landscape)
        ? screenWidth * 0.0169
        : screenHeight * 0.0169;
  }
}
