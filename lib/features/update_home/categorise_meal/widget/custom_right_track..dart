import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomRightTrack extends StatelessWidget {
  final String  title;
  const CustomRightTrack({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      decoration: BoxDecoration(
          color: AppColor.cECFCCB,

          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColor.cA2D850,width: 3.w)
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 13.w),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.greensigneture,height: 24.h),
            UIHelper.horizontalSpace(16.w),

            Text(
                 title,
                style:  TextFontStyle.headline16c0E101FNunitow600
            ),

          ],
        ),
      ),
    );
  }
}