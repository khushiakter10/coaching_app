import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBenchPressWidget extends StatelessWidget {
  final String text;
  const CustomBenchPressWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColor.cF3F3F4,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.exsizeimage,height: 64.h),
          UIHelper.horizontalSpace(11.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text,style: TextFontStyle.headline14c353535Figtreew500),
              UIHelper.verticalSpace(9.h),
              Row(
                children: [
                  Text('4',style: TextFontStyle.headline14c353535Figtreew500.copyWith(fontSize: 12.sp)),
                  UIHelper.horizontalSpace(4.w),
                  Text('Set',style: TextFontStyle.headline12c8B8B8BFigtreew500),
                  UIHelper.horizontalSpace(8.w),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 1.w),
                    decoration: BoxDecoration(
                      color: AppColor.cD9D9D9,

                    ),
                  ),
                  UIHelper.horizontalSpace(8.w),
                  Text('3x',style: TextFontStyle.headline14c353535Figtreew500.copyWith(fontSize: 12.sp)),
                  UIHelper.horizontalSpace(4.w),
                  Text('Reps',style: TextFontStyle.headline12c8B8B8BFigtreew500),
                  UIHelper.horizontalSpace(8.w),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 1.w),
                    decoration: BoxDecoration(
                      color: AppColor.cD9D9D9,

                    ),
                  ),
                  UIHelper.horizontalSpace(8.w),
                  Text('30',style: TextFontStyle.headline14c353535Figtreew500.copyWith(fontSize: 12.sp)),
                  UIHelper.horizontalSpace(4.w),
                  Text('Kg',style: TextFontStyle.headline12c8B8B8BFigtreew500),

                ],
              )

            ],
          ),
        ],
      ),
    );
  }
}