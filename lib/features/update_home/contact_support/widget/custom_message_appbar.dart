import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class CustomMessageAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String trnareText;

  const CustomMessageAppbar({
    super.key,
    required this.trnareText,
    required this.text,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.cFFFFFF,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w, ),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){NavigationService.goBack;},
                  child: SvgPicture.asset(AppIcons.bacicon,height: 24.h)),
              UIHelper.horizontalSpace(12.w),
              CircleAvatar(
                backgroundImage: AssetImage(AppImages.profileImage),
                radius: 20,
              ),
              UIHelper.horizontalSpace(12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( text, style: TextFontStyle.headline14c000E08Nunitow600),
                  UIHelper.verticalSpace(8.h),
                  Text(trnareText,style:  TextFontStyle.headline12c797C7BNunitow400),




                ],
              ),
              Spacer(),
              SvgPicture.asset(AppIcons.callIcon,height: 24.h)
            ],
          ),
        ),
      ),
    );
  }
}
