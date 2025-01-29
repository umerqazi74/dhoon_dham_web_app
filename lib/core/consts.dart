import 'package:flutter/material.dart';

//default padding of application...
const double dp = 16;

//const color of application...
const Color mainAppColor = Color(0xFFE7236A);
const Color buttonColor = Color(0xFFE7236A);
const Color bgColor = Color(0xFF0F0F0F);
Color disableColor = const Color(0xFFE7236A).withOpacity(.50);

const Color tColorOne = Color(0xFF3A3C4C);

const Color alertColor = Color(0xFFFF3D00);
const Color blackColor = Color(0xFF000000);
const Color whiteColor = Color(0xFFFFFFFF);

const mainColorCode = 0xFF2356B2;
MaterialColor mainMaterialColor = MaterialColor(0xFF2356B2, color);

Map<int, Color> color = {
  50: const Color(mainColorCode).withOpacity(.1),
  100: const Color(mainColorCode).withOpacity(.2),
  200: const Color(mainColorCode).withOpacity(.3),
  300: const Color(mainColorCode).withOpacity(.4),
  400: const Color(mainColorCode).withOpacity(.5),
  500: const Color(mainColorCode).withOpacity(.6),
  600: const Color(mainColorCode).withOpacity(.7),
  700: const Color(mainColorCode).withOpacity(.8),
  800: const Color(mainColorCode).withOpacity(.9),
  900: const Color(mainColorCode).withOpacity(1)
};
