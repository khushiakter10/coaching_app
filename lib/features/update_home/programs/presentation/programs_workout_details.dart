import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/features/update_home/programs/widgets/training_card_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';




class ProgramsWorkoutDetails extends StatelessWidget {
  const ProgramsWorkoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.programsWorkoutDetailsGirls),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           UIHelper.verticalSpaceExtraLarge,
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 24.w),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     GestureDetector(
                       onTap: () {
              NavigationService.goBack();
                       },
                       child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.h,horizontal: 11.w),
              decoration: BoxDecoration(
                color: AppColor.cF3F3F4,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(AppIcons.arrwright, height: 24.h),
                       ),
                     ),
                     
                ],
              ),
           ),
            UIHelper.verticalSpace(32.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
               children: [
                 Text(
                    "Styrka",
                    textAlign: TextAlign.start,
                    style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                      color: AppColor.cFFFFFF,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
               ],
                         ),
            ),
            UIHelper.verticalSpace(8.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Bygg dina muskler större och starkare med denna övning. Träna varje dag för att få volym!",
                      textAlign: TextAlign.start,
                      style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                        color: AppColor.cFFFFFF,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          UIHelper.verticalSpace(57.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 24.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.cFFFFFF,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder( 
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return TrainingCardWidget(
                            imagepath: AppImages.weightlifting,
                            title: "Biceps Curl",
                            set: "3",
                            Reps: "10",
                            ontaps: () {
                              NavigationService.navigateTo(
                                Routes.workoutDetails
                              ); 
                            },
                          );
                        },
                        
                        
                      ),
                    ),    
                  ],
                ),
              
              ),
            ),
           
          
          ],
        ),
      ),
    );
  } 
}