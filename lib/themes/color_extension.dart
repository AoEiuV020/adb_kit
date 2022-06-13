import 'package:flutter/material.dart';

extension ColorExt on State {
  ColorScheme get scheme => Theme.of(context).colorScheme;
}

extension ThemeDataExt on ThemeData {
  Color get surface1 {
    if (useMaterial3) {
      return primaryColor.withOpacity(0.05);
    }
    return Colors.white;
  }

  Color get surface2 {
    if (useMaterial3) {
      return primaryColor.withOpacity(0.08);
    }
    return grey2;
  }

  Color get surface3 {
    if (useMaterial3) {
      return primaryColor.withOpacity(0.11);
    }
    return grey3;
  }

  Color get surface4 {
    if (useMaterial3) {
      return primaryColor.withOpacity(0.12);
    }
    return grey4;
  }
}

Color grey1 = grey.shade100;
Color grey2 = grey.shade200;
Color grey3 = grey.shade300;
Color grey4 = grey.shade400;
const int _greyPrimaryValue = 0xFF9E9E9E;
const MaterialColor grey = MaterialColor(
  _greyPrimaryValue,
  <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF3F4F9),
    200: Color(0xffedeef4),
    300: Color(0xffe7e8ed),
    350: Color(0xFFD6D6D6),
    400: Color(0xFFD9DADF),
    500: Color(_greyPrimaryValue),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    850: Color(0xFF303030),
    900: Color(0xFF212121),
  },
);
