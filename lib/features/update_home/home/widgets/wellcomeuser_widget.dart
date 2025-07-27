import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class WelcomeUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

      Row(
      children: [
        
       GestureDetector(onTap: (){NavigationService.navigateTo(Routes.menuScreen);},
           child: SvgPicture.asset(AppIcons.menu,height: 32.h)),
        UIHelper.horizontalSpace(32.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hej, Wingman! 👋',
                style: TextFontStyle.headline16c111214Figtreew700),
            UIHelper.verticalSpace(4),
            Text('Välkommen och låt oss träna idag!',
                style: TextFontStyle.headline14c676C75Figtreew500),
          ],
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: AppColor.c1A1F0A,
          child: Stack(
            children: [

              Icon(
                Icons.notifications_outlined,
                size: 28.sp,
                color: Colors.white,
              ),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 5.r,
                  backgroundColor: AppColor.cF97316,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
