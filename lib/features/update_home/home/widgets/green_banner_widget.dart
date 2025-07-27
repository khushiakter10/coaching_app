import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class GreenBannerWidget extends StatelessWidget {
  const GreenBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Image.asset(AppImages.banner2),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 180.w,
                    child: Text(
                      'Ny vecka – justera vikterna om repetitionerna kändes för lätta',
                      style:
                          TextFontStyle.headline13c132234Satoshiw700.copyWith(
                        color: AppColor.cFFFFFF,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
