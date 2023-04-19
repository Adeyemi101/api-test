import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  
  static const Color notWhite = Color(0xEDF9FC);
  static const Color nearlyWhite = Color(0xFFFEFE);
  static const Color white = Color(0xFFFFFF);
  static const Color nearlyBlack = Color(0x1A2326);
  static const Color grey = Color(0x647175);
  static const Color dark_grey = Color(0x3D4547);

  static const Color darkText = Color(0x064556);
  static const Color darkerText = Color(0x064556);
  static const Color lightText = Color(0xEDF9FC);
  static const Color deactivatedText = Color(0x064556);
  static const Color dismissibleBackground = Color(0x2EC9F5);
  static const Color chipBackground = Color(0xAFEDFF);
  static const Color spacer = Color(0xAFEDFF);
  static const String fontName = 'SansSerif';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle( // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: Colors.black,
  );

  static const TextStyle headline = TextStyle( // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: Colors.black,
  );

  static const TextStyle title = TextStyle( // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: Colors.black,
  );

  static const TextStyle subtitle = TextStyle( // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: Colors.black,
  );

  static const TextStyle body2 = TextStyle( // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: Colors.black,
  );

  static const TextStyle body1 = TextStyle( // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: Colors.black,
  );

  static const TextStyle caption = TextStyle( // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: Colors.black, // was lightText
  );

}