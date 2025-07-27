import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/categorise_meal/widget/appbar_categorise.dart';
import 'package:coaching_app/features/update_home/categorise_meal/widget/custom_right_track..dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoriseMealScreen extends StatefulWidget {
  const CategoriseMealScreen({super.key});

  @override
  State<CategoriseMealScreen> createState() => _CategoriseMealScreenState();
}

class _CategoriseMealScreenState extends State<CategoriseMealScreen> {
  int calorieCount = 1550;
  bool isPlusSelected = false;
  bool isMinusSelected = false;

  void incrementCalories() {
    setState(() {
      calorieCount++;
      isPlusSelected = true;
      isMinusSelected = false;
    });
  }

  void decrementCalories() {
    setState(() {
      if (calorieCount > 0) {
        calorieCount--;
        isMinusSelected = true;
        isPlusSelected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:AppColor.cFFFFFF,
        appBar: AppBarCategorise(text: 'Kaloriintag'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 52.h),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColor.cF3F3F4,
                ),
                child: TabBar(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
                  dividerColor: Colors.transparent,
                  labelColor: AppColor.cFFFFFF,
                  unselectedLabelColor: AppColor.c676C75,
                  indicator: BoxDecoration(
                    color: AppColor.c192126,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextFontStyle.headline16FFFFFFFigtreew500,
                  unselectedLabelStyle:
                  TextFontStyle.headline16c676C75Figtreew500,
                  tabs:  [
                    Tab(text: 'Kcal'),
                    Tab(text: 'Joule'),
                  ],
                ),
              ),
              UIHelper.verticalSpace(40.h),
              Text(
                calorieCount.toString(),
                style: TextFontStyle.headline180c111214Urbanistw800
                    .copyWith(fontSize: 96.sp),
              ),
              UIHelper.verticalSpace(12.h),
              Text('kalorier dagligen',style: TextFontStyle.headline16c393C43Urbanistw400.copyWith(fontSize: 20.sp)),
              UIHelper.verticalSpace(64.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: decrementCalories,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 36.w),
                      decoration: BoxDecoration(
                        color: isMinusSelected
                            ? AppColor.c192126
                            : AppColor.cF3F3F4,
                        border: Border.all(
                          color: isMinusSelected
                              ? AppColor.c192126
                              : AppColor.cDADBDC,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(21.r),
                      ),
                      child: Center(
                        child: Text(
                          '−',
                          style: isMinusSelected
                              ? TextFontStyle.headline14cFFFFFFFigtreew400.copyWith(fontSize: 22.sp)
                              : TextFontStyle.headline20c9EA0A5Urbanistw400.copyWith(fontSize: 22.sp),
                        ),
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(16.w),
                  GestureDetector(
                    onTap: incrementCalories,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 34.w),
                      decoration: BoxDecoration(
                        color:
                        isPlusSelected ? AppColor.c192126 : AppColor.cF3F3F4,
                        border: Border.all(
                          color: isPlusSelected
                              ? AppColor.c192126
                              : AppColor.cDADBDC,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(21.r),
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: isPlusSelected
                              ? TextFontStyle.headline14cFFFFFFFigtreew400.copyWith(fontSize: 22.sp)
                              : TextFontStyle.headline180c111214Urbanistw800.copyWith(fontSize: 22.sp),

                        ),
                      ),
                    ),
                  ),


                ],
              ),

              UIHelper.verticalSpace(40.h),

              CustomRightTrack(title: 'Du är på rätt spår'),
            ],
          ),
        ),

        bottomNavigationBar:

        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.r, bottom: 25.h),
          child: CustomButtonWidget(
            heightbutton: 56.h,
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
            text: 'Fortsätt',
            borderRadius: 100.r,
            onPressed: () {
              NavigationService.navigateTo(Routes.myMealsScreen);
            },
          ),
        ),


      ),
    );
  }
}





