import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextFontStyle {
  TextFontStyle._();

  /*custom font use anywhere*/

  static final textStyle20UrbanistW500 = GoogleFonts.urbanist(
    color: AppColor.cFFFFFF,
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStyle24RobotoW600 = GoogleFonts.roboto(
    color: AppColor.c282828,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 3.h,
    letterSpacing: 0,
  );

  static final textStyle24urbanistsW400 = GoogleFonts.urbanist(
    color: AppColor.cCFD0D5,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final headline11c848585poppinsw400 = GoogleFonts.poppins(
    color: AppColor.cA9AAAA,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    height: 1.33.h,
    letterSpacing: 0,
  );
  static final headline24c848585poppinsw500 = GoogleFonts.poppins(
    color: AppColor.cFFFFFF,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    height: 1.33.h,
    letterSpacing: 0,
  );
  static final textStyle13c364B63nunitow700 = GoogleFonts.nunito(
    color: AppColor.c364B63,
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static var textStyle32SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 24.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var textStyle33SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c3D74FF,
      fontSize: 33.sp,
      height: 1.10,
      letterSpacing: -0.66,
      fontWeight: FontWeight.w700);

  static var textStyle16SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      fontFamilyFallback: const [
        'Open Sans',
        'Poppins',
        'Noto Sans',
        'Satoshi',
      ],
      color: AppColor.c111214,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var textStyle14SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);

  static var textStyle16SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);

  static var textStyle14Satoshic616161W500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c616161,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w500);

  static var textStyle14Nunitoc364B63W700 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c364B63,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);

  static var textStyle16Satoshic132234W600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w600);

  static var textStyle20Satoshic132234W700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);

  static var textStyle16Satoshic132234W400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2B2B2B,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);


  static var textStyle13c2F6FEDSatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2F6FED,
      fontSize: 13.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);

  static var textStyle13c2F6FEDSatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 13.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);

  static var textStyle14c616161SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c616161,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w500);

  static var textStyle16c132234SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w500);

  static var headline20c2B2B2Bsatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2B2B2B,
      fontSize: 20.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);

  static var textStyle12SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline12c2FED52satoshiw600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2FED52,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var textStyle14c4B586BSatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c4B586B,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle16SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var textStyle14SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c607080poppinsw500 = TextStyle(
      fontFamily: 'poppins',
      color: AppColor.c607080,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);



  static var textStyle16c132234SatoshiW600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var textStyle16c535455SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c535455,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14c132235Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline13cB25E09atoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cB25E09,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline18c08875DSatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c08875D,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline20cFFFFFFSatoshi700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline13cD3DDE7Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cD3DDE7,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline20c132234Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w800);

  static var headline13c132234Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline14c0C0D19Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c0C0D19,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14c5E5E5ELatoiw400 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c5E5E5E,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline22c0C0D19Latow500 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c0C0D19,
      fontSize: 22.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline16c0C0D19Latow500 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c0C0D19,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c132234poppinsw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var textStyle16cFFFFFFSatoshiW600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline15c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 15.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle20c132234SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var textStyle12c132234FigtreeW500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c132234,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline16c010B21Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c010B21,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14c607080satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c607080,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);



  static var headline20c132234satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);


  static var textStyle16cFFFFFFSatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cD7D7D7,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline16c111214Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c111214,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline16c393C43Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c393C43S,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle14cFFFFFFSatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle18c111214SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c3C73FF,
      fontSize: 18.sp,
      height: 1.10,
      letterSpacing: -0.36,
      fontWeight: FontWeight.w700);

  static var headline12cFFCC00Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFCC00,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline20c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline10cFF4931Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFF4931,
      fontSize: 10.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline18212738Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline18c212738Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c212738,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline14c607080Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c607080,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline11c878A94Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c878A94,
      fontSize: 11.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c2563FFSatoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2563FF,
      fontSize: 11.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c898989Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c898989,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14364B63Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);



  static var headline14c132235satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

//______________________________________New App_______________________________________________//

  static var headline16c393C43Figtreew600 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c393C43,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

 static var headline16c393C43Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c393C43,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline16cFFFFFFFigtreew600 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline16c111214Figtreew700 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c111214,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);


  static var headline20c111214Figtreew600 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c111214,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline14c676C75Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c676C75,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14cF97316Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.cF97316,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14c4B586BFigtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c4B586B,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


  static var headline14000000Urbanistw500 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c000000,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline30c192126Urbanistw600 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c192126,
      fontSize: 30.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline14c192126Urbanistw500 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c192126,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);



  static var headline16FFFFFFFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline32c252C32Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c252C32,
      fontSize: 32.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline20c6B7280Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c6B7280,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline16c676C75Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c676C75,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline40c252C32Figtreew700 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c252C32,
      fontSize: 40.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);



  static var headline14c323232Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c323232,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14cFFFFFFFigtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.cFFFFFF,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline180c111214Urbanistw800 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c111214,
      fontSize: 180.sp,
      height: 1.30,
      fontWeight: FontWeight.w800);

  static var headline20cBABBBEUrbanistw600 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.cBABBBE,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline20cFFFFFFWorkSansw700 = TextStyle(
      fontFamily: 'Work Sans',
      color: AppColor.cFFFFFF,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline16c393C43Urbanistw400 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c393C43,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


  static var headline16c393C43Urbanistw500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c393C43,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline20c9EA0A5Urbanistw400 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c9EA0A5,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14c000000Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c000000,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14cF97316Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cF97316,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline16000000Figtreew600 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c000000,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline16000000Figtreew700 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c000000,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline16c212738Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c212738,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


  static var headline14c2B2B2BFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c2B2B2B,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline10c9FA0A2Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c9FA0A2,
      fontSize: 10.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline20c4A4A4AFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c4A4A4A,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


  static var headline14373535Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c373535,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline16c170F49Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c170F49,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14c6F6C8FFigtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c6F6C8F,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline14c000E08Nunitow600 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c000E08,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline14c000E08Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c000E08,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline12c797C7BNunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c797C7B,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline12cA1A1A1Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.cA1A1A1,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline18cA1A1A1Nunitow500 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.cA1A1A1,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline16c767778Nunitow500 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c767778,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


 static var headline12c424242Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c424242,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline16c096EF9Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c096EF9,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline14c353535Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c353535,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline12c8B8B8BFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c8B8B8B,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline16c0E101FNunitow600 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c0E101F,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

 static var headline16c0E101FNunitow700 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c0E101F,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

 static var headline14c949494Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c949494,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


 static var headline16c86888CFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c86888C,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


 static var headline16c393939Figtreew700 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c393939,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

 static var headline14c545454Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c545454,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline12c545454Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c4D5260,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline12c545454Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c4D5260,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);



  static var headline12c878A94Figtreew400 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c878A94,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);



  static var headline15c535252Figtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c535252,
      fontSize: 15.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


  static var headline12c191919Urbanistw500 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c191919,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


  static var headline21c191919Urbanistw600 = TextStyle(
      fontFamily: 'Urbanist',
      color: AppColor.c191919,
      fontSize: 21.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline12c3A4750Nunitow600 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c3A4750,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline14c737373Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c737373,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);



  static var headline12c929292Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c929292,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


  static var headline14c676767Nunitow600 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c676767,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);


  static var headline12c2F2F2FFigtreew500 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c2F2F2F,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c818181Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c818181,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline20c4D5260Figtreetow700 = TextStyle(
      fontFamily: 'Figtree',
      color: AppColor.c4D5260,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);















}
