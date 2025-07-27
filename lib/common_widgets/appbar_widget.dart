import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const CustomAppBar({super.key, required this.text});

  @override
  Size get preferredSize => Size.fromHeight(70.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 70.h,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Container(
        margin: EdgeInsets.only(left: 10.w),
        child: GestureDetector(
          onTap: () {
            NavigationService.goBack();
          },
          child: SvgPicture.asset(
            AppIcons.arrwicon,
            height: 24.h,
          ),
        ),
      ),
      title: Text( text,  style: TextFontStyle.headline16c111214Figtreew700.copyWith(fontSize: 20.sp)),



      centerTitle: true,
    );
  }
}