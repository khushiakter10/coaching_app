import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CreatOwnWorkThreeScreen extends StatefulWidget {
  const CreatOwnWorkThreeScreen({super.key});

  @override
  State<CreatOwnWorkThreeScreen> createState() => _CreatOwnWorkThreeScreenState();
}

class _CreatOwnWorkThreeScreenState extends State<CreatOwnWorkThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Bänkpress'),

      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.cFFFCFB,
                borderRadius: BorderRadius.circular(14.r),
                border: Border.all(color: AppColor.cE0E1E3),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text( 'Set 1',style: TextFontStyle.textStyle12c132234FigtreeW500),
                    UIHelper.verticalSpace(4.h),

                    Row(
                      children: [
                        Expanded(
                          child: Container(height: 42.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text('Vikt (lbs)',style: TextFontStyle.headline10c9FA0A2Figtreew400))),

                        UIHelper.horizontalSpace(12.w),
                        Expanded(
                          child: Container(
                            height: 42.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text('Reps', style: TextFontStyle.headline10c9FA0A2Figtreew400))),



                      ],
                    ),
                    UIHelper.verticalSpace(20.h),

                    Text( 'Set 2',style: TextFontStyle.textStyle12c132234FigtreeW500),
                    UIHelper.verticalSpace(4.h),

                    Row(
                      children: [
                        Expanded(
                            child: Container(height: 42.h,
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text('Vikt (lbs)',style: TextFontStyle.headline10c9FA0A2Figtreew400))),

                        UIHelper.horizontalSpace(12.w),
                        Expanded(
                            child: Container(
                                height: 42.h,
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text('Reps', style: TextFontStyle.headline10c9FA0A2Figtreew400))),



                      ],
                    ),
                    UIHelper.verticalSpace(20.h),
                    Text( 'Set 3',style: TextFontStyle.textStyle12c132234FigtreeW500),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        Expanded(
                            child: Container(height: 42.h,
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text('Vikt (lbs)',style: TextFontStyle.headline10c9FA0A2Figtreew400))),

                        UIHelper.horizontalSpace(12.w),
                        Expanded(
                            child: Container(
                                height: 42.h,
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: AppColor.cE1E6EF,width: 1.w),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text('Reps', style: TextFontStyle.headline10c9FA0A2Figtreew400))),



                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UIHelper.verticalSpace(12.h),
            CustomButtonWidget(
              heightbutton: 56.h,
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Spara och lägg till träning',
              borderRadius: 100.r,
              onPressed: () {
                NavigationService.navigateTo(Routes.menuScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
