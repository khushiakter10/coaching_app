import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ProgramsIntro extends StatelessWidget {
  const ProgramsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.programsIntro),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 62.h),
              child: Text(
                "10-minuters kondition Högintensiva intervaller",
                textAlign: TextAlign.center,
                style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                  color: AppColor.cFFFFFF,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 31.h),
              child: Text(
               textAlign: TextAlign.center, "Lär dig med fitnessexperter, i din egen takt, och med 100% uppdaterat innehåll.",
                style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                  color: AppColor.cFFFFFF,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            UIHelper.verticalSpaceExtraLarge,
            UIHelper.verticalSpaceExtraLarge,
          ],
        ),
      ),
      
    
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.h,vertical: 16.w),
        child: CustomButtonWidget(heightbutton: 56.h,text: "Fortsätt",color: AppColor.cFFFFFF, onPressed: (){NavigationService.navigateTo(Routes.programsWorkoutDetails); },borderRadius:100.r, textStyle:TextStyle(color: AppColor.c2D2D2D,fontWeight: FontWeight.w600) ,),
      ),
      
      );  
    
  }
}