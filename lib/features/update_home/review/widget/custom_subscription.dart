import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomSubscription extends StatelessWidget {
  final String text;
  const CustomSubscription({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return

      Container(
      padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColor.cF4F4F5,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( text,style: TextFontStyle.headline16000000Figtreew600),
          UIHelper.verticalSpace(24.h),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 13.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.excellent,height: 32.h),
                    UIHelper.verticalSpace(8.h),
                    Text('Utmärkt',style: TextFontStyle.headline16c393C43Urbanistw500)
                  ],
                ),

                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.normal,height: 32.h),
                    UIHelper.verticalSpace(8.h),
                    Text('Utmärkt',style: TextFontStyle.headline16c393C43Urbanistw500)
                  ],
                ),
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.tufft,height: 32.h),
                    UIHelper.verticalSpace(8.h),
                    Text('Tufft idag',style: TextFontStyle.headline16c393C43Urbanistw500)
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}