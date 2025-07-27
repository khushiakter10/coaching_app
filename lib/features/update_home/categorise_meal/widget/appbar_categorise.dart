import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppBarCategorise extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const AppBarCategorise({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 60.h,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              NavigationService.goBack();
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
              decoration: BoxDecoration(
                color: AppColor.cF3F3F4,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(AppIcons.arrwright, height: 24.h),
            ),
          ),
          Text(
            text,
            style: TextFontStyle.headline20c111214Figtreew600,
          ),
          SvgPicture.asset(AppIcons.setting),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
