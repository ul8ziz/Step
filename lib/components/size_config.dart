import 'package:flutter/material.dart';

import 'constants.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}
Widget widgetButtonProgress(context, {colorButton, prograsColor,width, height}) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: colorButton ?? kPrimaryColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), //color of shadow
          spreadRadius: 0, //spread radius
          blurRadius: 6, // blur radius
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    width: width ?? MediaQuery.of(context).size.width,
    height: height ?? MediaQuery.of(context).size.height * .055,
    child:  CircularProgressIndicator(
      color:prograsColor?? Colors.white,
    ),
  );
}


// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
