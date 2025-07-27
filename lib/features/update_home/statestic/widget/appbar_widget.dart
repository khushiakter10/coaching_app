import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const AppBarWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      toolbarHeight: 80.h,
      titleSpacing: 16.w,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text, // Dynamic title
            style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 18.sp),
          ),
          UIHelper.verticalSpace(6.h),
          Text(
            'Låt oss göra en måltidsplan idag!',
            style: TextFontStyle.headline12c878A94Figtreew400.copyWith(fontSize: 11.sp),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: AppColor.c1A1F0A,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  AppIcons.notification,
                  height: 20.h,
                ),
                Positioned(
                  top: -6,
                  right: -2,
                  child: SvgPicture.asset(
                    AppIcons.active,
                    height: 14.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
