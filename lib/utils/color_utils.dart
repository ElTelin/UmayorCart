import 'package:flutter/material.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

getBaseColors(){
  List<Color> colors=[hexStringToColor("FFF2D8"),
          hexStringToColor("EAD7BB"),
          hexStringToColor("BCA37F")];

  return colors;
}