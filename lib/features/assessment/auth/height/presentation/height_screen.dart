import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/assessment/auth/height/widget/feet_widget.dart';
import 'package:coaching_app/features/assessment/auth/height/widget/inch_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.cFFFFFF,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 80.h,
          title: const CustomAppBarWidget(
            title: 'Bedömning',
            text: '4 av 12',
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(  child: Text(  'Vad är din längd?',style: TextFontStyle.headline30c192126Urbanistw600)),
              UIHelper.verticalSpace(48.h),

              Container(
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColor.cF3F3F4,
                ),
                child: TabBar(
                  padding:
                  EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
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
                    Tab(text: 'Fötter'),
                    Tab(text: 'Tum'),
                  ],
                ),
              ),

              UIHelper.verticalSpace(20.h),

              SizedBox(
                height: 400.h,
                child: TabBarView(
                  children: [
                     FeetWidget(),
                     InchWidget(),
                  ],
                ),
              ),
              UIHelper.verticalSpace(35.h),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 30.h, right: 23.w, left: 23.w),
          child: CustomButtonWidget(
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
            text: 'Fortsätt',
            borderRadius: 100.r,
            heightbutton: 56.h,
            onPressed: () {
              NavigationService.navigateTo(Routes.experienceToPriorToTrainingScreen);
            },
          ),
        ),
      ),
    );
  }
}
