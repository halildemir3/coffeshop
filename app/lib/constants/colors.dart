import 'package:flutter/material.dart';

colorX(String color) {

  String newColor = '0xff$color';

  newColor = newColor.replaceAll('#', '');

  int dartColor = int.parse(newColor);
  return Color(dartColor);
}
class ColorX{
 static Color white= colorX("FFFFFF");
 static Color orange= colorX("F27C4A");
 static Color gold= colorX("FF9900");
 static Color black= colorX("2B2F33");
 static Color black2= colorX("1F2123");
 static Color greenLight= colorX("52F995");
 static Color greenDark= colorX("52F995");
 static Color textGrey= colorX("97999B");//272B2E
 static Color black3= colorX("272B2E");//272B2E
 static Color transparent= Colors.transparent;//272B2E


 static List<Color> linearWhite=[white,white.withOpacity(0)];
 static List<Color> linearGreen=[greenLight,greenDark];
 static List<Color> linearBlack=[black,black.withOpacity(0.7)];

}
