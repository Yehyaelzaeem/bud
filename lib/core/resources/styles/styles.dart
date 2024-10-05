import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/color.dart';
import '../fonts/app_fonts.dart';

class TextStyles {
  ///Bold
  static TextStyle font21PrimaryColor700Weight = TextStyle(
      fontSize: 21.sp,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w700,
      color: primaryColor);
  static TextStyle font21Hint700Weight = TextStyle(
      fontSize: 21.sp,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w700,
      color: customGray);
  static TextStyle font21Black700Weight = TextStyle(
      fontSize: 21.sp,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w700,
      color: Colors.black);

  ///Mid
  static TextStyle font16Primary500Weight = const TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w500,
      color: primaryColor);
  static TextStyle font16White500Weight = const TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w500,
      color: Colors.white);
  static TextStyle font16Black500Weight = const TextStyle(
      fontFamily: AppFonts.Roboto,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black);
  static TextStyle font16CustomGray500Weight = TextStyle(
      fontFamily: AppFonts.Roboto,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: customGray);

  ///Regular
  static TextStyle font14Primary400Weight = const TextStyle(
      fontSize: 14,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w400,
      color: primaryColor);
  static TextStyle font14CustomGray400Weight = const TextStyle(
      fontFamily: AppFonts.Roboto,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: customGray);

  //Sim Bold
  static TextStyle font18CustomGray600Weight = const TextStyle(
      fontSize: 18,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w600,
      color: customGray);
  static TextStyle font18Black600Weight = const TextStyle(
      fontSize: 18,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w600,
      color: blackColor);
  static TextStyle font18Primary600Weight = const TextStyle(
      fontSize: 18,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w600,
      color: primaryColor);

////////////////////

  static TextStyle font18Black700Weight = const TextStyle(
      fontSize: 18,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  static TextStyle font20CustomGray400Weight = const TextStyle(
      fontSize: 20,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w400,
      color: customGray);
  static TextStyle font20Black400Weight = const TextStyle(
      fontSize: 20,
      fontFamily: AppFonts.Roboto,
      fontWeight: FontWeight.w400,
      color: Colors.black);
}
