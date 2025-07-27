import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomeUserWorkoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
        GestureDetector(onTap: (){NavigationService.navigateTo(Routes.trainingScreen);},
          child: CircleAvatar(
            backgroundColor: AppColor.cF3F3F4,
            child: Icon(
              Icons.add,
              size: 28.sp,
              color: AppColor.c0E101F,
            ),
          ),
        ),
      ],
    );
  }
}
