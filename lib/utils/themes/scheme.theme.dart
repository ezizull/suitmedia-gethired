import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppSchemeColor {
  static const FlexSchemeColor light = FlexSchemeColor(
    primary: Color(0xff2B637B),
    primaryContainer: Color(0xffe3f7ff),
    secondary: Color(0xff554AF0),
    secondaryContainer: Color(0xffdbd9ff),
    tertiary: Color(0xff86b5a8),
    tertiaryContainer: Color(0xffe4fff7),
    error: Color(0xffe95345),
    errorContainer: Color(0xfffaceca),
    swapOnMaterial3: true,
  );

  static const FlexSchemeColor dark = FlexSchemeColor(
    primary: Color(0xff2B637B),
    primaryContainer: Color(0xffe3f7ff),
    secondary: Color(0xff554AF0),
    secondaryContainer: Color(0xffdbd9ff),
    tertiary: Color(0xffe4fff7),
    tertiaryContainer: Color(0xff86b5a8),
    error: Color(0xfffaceca),
    errorContainer: Color(0xffe95345),
    swapOnMaterial3: true,
  );
}
