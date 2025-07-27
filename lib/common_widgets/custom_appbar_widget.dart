import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';




class CustomAppBarWidget extends StatelessWidget {
  final String? title;
  final String? text;
  const CustomAppBarWidget({
    super.key,
    this.text,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return

      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(onTap: () {NavigationService.goBack();},

          child: Container(
            padding: EdgeInsets.symmetric(vertical: 9.h,horizontal: 11.w),
            decoration: BoxDecoration(
              color: AppColor.cF3F3F4,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: SvgPicture.asset(AppIcons.arrwright, height: 24.h),
          ),
        ),

        Text(title ?? '',style: TextFontStyle.headline20c111214Figtreew600),

        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 11.w),
          decoration: BoxDecoration(
            color: AppColor.cF3F3F4,
            borderRadius: BorderRadius.circular(11.r),
          ),
          child: Text(text ?? '',style: TextFontStyle.headline16000000Figtreew600.copyWith(fontSize: 14.sp)),



        ),
      ],
    );
  }
}
