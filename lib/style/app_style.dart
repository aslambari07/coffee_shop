import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//App image
const String image81 = "assets/images/image81.png";
const String profile = "assets/images/profile.png";
const String image1 = "assets/images/image-1.png";
const String add = "assets/images/add.png";
const String salin = "assets/images/packaging.png";
const String salin1 = "assets/images/packaging1.png";

//App icons
const String plusIcon = "assets/images/plus-icon.svg";
const String searchIcon = "assets/images/seach-icon.svg";
const String fillterIcon = "assets/images/fillter-icon.svg";

const Color kbuttonColor = Color(0xFFC67C4E);
const Color kWhiteColor = Colors.white;
const Color kBlackColor = Colors.black;
const Color kTexColor = Color(0xff2F2D2D);

List<Color> gradientColors = [
  const Color(0xFF131313),
  const Color(0xFF131313),
];

ThemeData? theme = ThemeData(
  scaffoldBackgroundColor: const Color(0xfff9f9f9),
  textTheme: GoogleFonts.soraTextTheme().apply(
    bodyColor: kTexColor,
    displayColor: kWhiteColor,
  ),
);
