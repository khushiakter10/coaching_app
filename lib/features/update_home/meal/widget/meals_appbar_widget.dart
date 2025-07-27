import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MealsAppbarWidget extends StatelessWidget {
  final String text;

  const MealsAppbarWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 80.h,
      backgroundColor: AppColor.cFFFFFF,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 18.sp),
                  ),
                  UIHelper.verticalSpace(6.h),
                  Text(
                    'Låt oss göra en måltidsplan idag!',
                    style: TextFontStyle.headline11c878A94Satoshiw500,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){NavigationService.navigateTo(Routes.creatOwnMealScreen);},
            child: Padding(
              padding: EdgeInsets.only( right: 7.w),
              child: SvgPicture.asset(
                AppIcons.plusebutton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
