import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomSubscriptionWidget extends StatelessWidget {
  final String subscripText;
  final String subscrip;
  const CustomSubscriptionWidget({
    super.key, required this.subscripText, required this.subscrip,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){NavigationService.navigateTo(Routes.manageSubcriptionScreen);},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColor.cF4F4F5,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subscripText,
              style: TextFontStyle.headline16000000Figtreew600
                  ,
            ),
            UIHelper.verticalSpace(25.h),
            Text(subscrip,
                style:  TextFontStyle.headline14373535Figtreew500),
            UIHelper.verticalSpace(7.h),
            Divider(color: AppColor.cE0E0E1, height: 1.h),
            UIHelper.verticalSpace(11.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hantera Prenumeration',style: TextFontStyle.headline14373535Figtreew500),
                SvgPicture.asset(AppIcons.leftIcon, height: 24.h)
              ],
            ),
            UIHelper.verticalSpace(7.h),
          ],
        ),
      ),
    );
  }
}