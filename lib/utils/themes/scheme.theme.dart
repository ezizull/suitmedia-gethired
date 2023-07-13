import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppSchemeColor {
  static const FlexSchemeColor light = FlexSchemeColor(
    primary: Color(0xff2A5188),
    primaryContainer: Color(0xff9cc5ff),
    secondary: Color(0xff0C1B2F),
    secondaryContainer: Color(0xfffff8Ed),
    tertiary: Color(0xffA6CDCA),
    tertiaryContainer: Color(0xffedfffe),
    error: Color(0xffe95345),
    errorContainer: Color(0xfffaceca),
    swapOnMaterial3: true,
  );

  static const FlexSchemeColor dark = FlexSchemeColor(
    primary: Color(0xff2A5188),
    primaryContainer: Color(0xff9cc5ff),
    secondary: Color(0xff0C1B2F),
    secondaryContainer: Color(0xfffff8Ed),
    tertiary: Color(0xffedfffe),
    tertiaryContainer: Color(0xffA6CDCA),
    error: Color(0xfffaceca),
    errorContainer: Color(0xffe95345),
    swapOnMaterial3: true,
  );
}
