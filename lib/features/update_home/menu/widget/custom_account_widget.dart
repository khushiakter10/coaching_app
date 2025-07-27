import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomAccountWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomAccountWidget({
    super.key,
    required this.title, required this.subtitle,

  });

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColor.cF4F4F5,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextFontStyle.headline16000000Figtreew600.copyWith(fontSize: 14.sp)
                .copyWith(fontSize: 16.sp),
          ),
          UIHelper.verticalSpace(12.h),
          Text(subtitle,
              style: TextFontStyle.headline20c4A4A4AFigtreew500),
          UIHelper.verticalSpace(12.h),
          Text('wyattdoe@gmail.com',
              style: TextFontStyle.headline20c4A4A4AFigtreew500
                  .copyWith(fontSize: 12.sp)),
          UIHelper.verticalSpace(12.h),
          Text('Ålder 30',
              style: TextFontStyle.headline20c4A4A4AFigtreew500
                  .copyWith(fontSize: 12.sp)),
          UIHelper.verticalSpace(14.h),
          Divider(color: AppColor.cE0E0E1, height: 1.h),
          UIHelper.verticalSpace(7.h),

          GestureDetector(
            onTap: (){NavigationService.navigateTo(Routes.changePassworsScreen);},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ändra Lösenord',style: TextFontStyle.headline14373535Figtreew500),
                SvgPicture.asset(AppIcons.leftIcon, height: 24.h)
              ],
            ),
          ),

          UIHelper.verticalSpace(7.h),
          Divider(color: AppColor.cE0E0E1, height: 1.h),
          UIHelper.verticalSpace(7.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Logga Ut',style: TextFontStyle.headline14373535Figtreew500),
              SvgPicture.asset(AppIcons.leftIcon, height: 24.h)
            ],
          ),
        ],
      ),
          );
  }
}
