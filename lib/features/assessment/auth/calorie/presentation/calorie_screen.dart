import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CalorieScreen extends StatefulWidget {
  const CalorieScreen({super.key});

  @override
  State<CalorieScreen> createState() => _CalorieScreenState();
}

class _CalorieScreenState extends State<CalorieScreen> {
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 60.h,
          title: CustomAppBarWidget(
            title: 'Bedömning',
            text: '4 av 12',
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 50.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(  'Vad är ditt vanliga kaloriintag per dag?', style: TextFontStyle.headline30c192126Urbanistw600,textAlign: TextAlign.center)),

              UIHelper.verticalSpace(40.h),
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
                  tabs: const [
                    Tab(text: 'kg'),
                    Tab(text: 'lbs'),
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

              Text('kalorier dagligen',  style: TextFontStyle.headline16c393C43Urbanistw400   .copyWith(fontSize: 20.sp)),

              UIHelper.verticalSpace(40.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: decrementCalories,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 34.w),
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
                        borderRadius: BorderRadius.circular(10),
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
                  SizedBox(width: 20),
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
                        borderRadius: BorderRadius.circular(10),
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
            ],
          ),
        ),

        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.r, bottom: 25.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButtonWidget(
                textStyle: TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 16.sp),
                color: AppColor.cE4E4E4,
                text: 'Föredrar att hoppa över, tack',
                borderRadius: 100.r,
                heightbutton: 56.h,
                onPressed: () {
                },
              ),
              UIHelper.verticalSpace(12.h),
              CustomButtonWidget(
                textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
                text: 'Fortsätt',
                borderRadius: 100.r,
                heightbutton: 56.h,
                onPressed: () {
                  NavigationService.navigateToWithArgs(
                      Routes.navigationScreen, {'pageNum': 0});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
