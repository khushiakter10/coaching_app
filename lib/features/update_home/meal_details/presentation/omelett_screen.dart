import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/meal_details/widget/custom_meals.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class OmelettScreen extends StatelessWidget {
  const OmelettScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cF9F9F9,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  height: 300.h,
                    width: double.infinity,
                    AppImages.vagitable,fit: BoxFit.cover),
                Positioned(
                  top: 50,
                 left: 20,
                  child:  GestureDetector(onTap: (){NavigationService.goBack;},
                      child: SvgPicture.asset(AppIcons.arrwicon))
                ),
                Positioned(
                  top: 60,
                  left: 170,
                  child: Text(
                    "Omelet",
                    style: TextFontStyle.headline20cFFFFFFWorkSansw700,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 340,
                  child: SvgPicture.asset(AppIcons.containercopy,height: 45,)
                ),
                Positioned(
                  top: 285,
                  left: 30,
                  child: Card(
                    color: AppColor.cFFFFFF,
                    elevation: 1,
                    child: SizedBox(
                      height: 61.h,
                      width: 342.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                            SvgPicture.asset(AppIcons.caloriIcon,height: 22.h,),
                             UIHelper.horizontalSpace(10.w),
                              Text("135 kcal",style: TextFontStyle.headline12c191919Urbanistw500),
                              UIHelper.horizontalSpace(30.w),
                              Container(  height: 16, width: 1, color: Colors.grey ),
                              UIHelper.horizontalSpace(30.w),
                             SvgPicture.asset(AppIcons.clocktru,height: 22.h),
                              UIHelper.horizontalSpace(8.w),
                              Text("5 min",style: TextFontStyle.headline12c191919Urbanistw500),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(40.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Fett",style: TextFontStyle.headline12c3A4750Nunitow600),
                         UIHelper.verticalSpace(15.h),
                          Text( "1,5 g",   style:  TextFontStyle.headline21c191919Urbanistw600),



                        ],
                      ),
                      UIHelper.horizontalSpace(40.w),
                      Column(
                        children: [
                          Text("Protein",style: TextFontStyle.headline12c3A4750Nunitow600),
                          UIHelper.verticalSpace(15.h),
                          Text( "10,9 g",   style:  TextFontStyle.headline21c191919Urbanistw600),
                        ],
                      ),
                      UIHelper.horizontalSpace(40.w),
                      Column(
                        children: [
                          Text("Kolhydrater",style: TextFontStyle.headline12c3A4750Nunitow600),
                          UIHelper.verticalSpace(15.h),
                          Text( "13,5 g",   style:  TextFontStyle.headline21c191919Urbanistw600),
                        ],
                      ),
                    ],
                  ),

                  UIHelper.verticalSpace(25.h),
                  Text("Hälsosam balanserad vegetarisk mat",style: TextFontStyle.headline21c191919Urbanistw600.copyWith(fontSize: 20.sp)),
                  UIHelper.verticalSpace(12.h),
                  Padding(padding:  EdgeInsets.all(8..sp),
                    child: Text(
                      "Det finns många variationer av stycken av Lorem Ipsum tillgängliga, men de flesta har genomgått förändringar i någon form, genom injicerad humor,",
                      style:  TextFontStyle.headline14c737373Nunitow400,textAlign: TextAlign.center,
                    ),
                  ),
                  UIHelper.verticalSpace(12.h),

                  CustomButtonWidget(
                    text: 'Kaloriintag',
                    color: AppColor.c192126,
                    borderRadius: 100.r,
                    heightbutton: 40.h,
                    textStyle: TextFontStyle.headline16cFFFFFFFigtreew600.copyWith(fontSize: 12.sp),

                    onPressed: (){NavigationService.navigateTo(Routes.trainingScreen);},
                  ),
                  UIHelper.verticalSpace(39.h),
                  Text('Mina måltider',style: TextFontStyle.headline16000000Figtreew700.copyWith(fontSize: 20.sp)),
                  UIHelper.verticalSpace(12.h),

        ///////////////////////////////////////////////////////////////////////////////////////////////////


                  CustomMeals(medText: 'Smoothie med spenat, avokado och mandelmjölk', frukostText: 'Frukost',),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

