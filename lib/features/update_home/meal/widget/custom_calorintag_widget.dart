import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';




class CustomCalorintagWidget extends StatelessWidget {
  final String caloriText;
  final String kolhydraterText;
  const CustomCalorintagWidget({
    super.key,
    required this.caloriText,
    required this.kolhydraterText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.cF6F6F6, borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              caloriText,
              style: TextFontStyle.headline16c212738Figtreew500,
            ),
            UIHelper.verticalSpace(12.h),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 9),
                  decoration: BoxDecoration(
                      color: AppColor.cFFF080,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kolhydraterText,
                        style: TextFontStyle.headline16c212738Figtreew500
                            .copyWith(fontSize: 12.sp),
                      ),
                      UIHelper.verticalSpace(7.h),
                      LinearPercentIndicator(
                        padding: EdgeInsets.only(right: 8.r),
                        width: 80.w,
                        lineHeight: 8.h,
                        percent: 0.5,
                        backgroundColor: Colors.grey.shade300,
                        progressColor: Colors.green,
                        barRadius: Radius.circular(12.r),
                        //center: Text("50%"),
                        animation: true,
                      ),
                      UIHelper.verticalSpace(7.h),
                      Row(
                        children: [
                          Text('67',
                              style:
                                  TextFontStyle.headline12c545454Figtreew500),
                          Text('/120 g',
                              style: TextFontStyle.headline11c878A94Satoshiw500)
                        ],
                      )
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(8.r),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 9),
                  decoration: BoxDecoration(
                      color: AppColor.cDAF17E,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fetter',
                        style: TextFontStyle.headline16c212738Figtreew500
                            .copyWith(fontSize: 12.sp),
                      ),
                      UIHelper.verticalSpace(7.h),
                      LinearPercentIndicator(
                        padding: EdgeInsets.only(right: 8.r),
                        width: 80.w,
                        lineHeight: 8.h,
                        percent: 0.5,
                        backgroundColor: Colors.grey.shade300,
                        progressColor: Colors.green,
                        barRadius: Radius.circular(12.r),
                        //center: Text("50%"),
                        animation: true,
                      ),
                      UIHelper.verticalSpace(7.h),
                      Row(
                        children: [
                          Text('42',
                              style:
                                  TextFontStyle.headline12c545454Figtreew500),
                          Text('/48 g',
                              style: TextFontStyle.headline11c878A94Satoshiw500)
                        ],
                      )
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(8.r),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 9),
                  decoration: BoxDecoration(
                      color: AppColor.cCEE9FF,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Protein',
                        style: TextFontStyle.headline16c212738Figtreew500
                            .copyWith(fontSize: 12.sp),
                      ),
                      UIHelper.verticalSpace(7.h),
                      LinearPercentIndicator(
                        padding: EdgeInsets.only(right: 8.r),
                        width: 80.w,
                        lineHeight: 8.h,
                        percent: 0.5,
                        backgroundColor: Colors.grey.shade300,
                        progressColor: Colors.green,
                        barRadius: Radius.circular(12.r),
                        //center: Text("50%"),
                        animation: true,
                      ),
                      UIHelper.verticalSpace(7.h),
                      Row(
                        children: [
                          Text('25',
                              style:
                                  TextFontStyle.headline12c545454Figtreew500),
                          Text('/32 g',
                              style: TextFontStyle.headline11c878A94Satoshiw500)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                Image.asset(AppImages.caloryimage, height: 44.h),
                UIHelper.horizontalSpace(14.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Totalt kaloriintag',
                        style: TextFontStyle.headline12c878A94Figtreew400),
                    UIHelper.verticalSpace(2.h),
                    Row(
                      children: [
                        Text('5 400',
                            style: TextFontStyle.headline18c212738Satoshiw700
                                .copyWith(fontSize: 22.sp)),
                        UIHelper.horizontalSpace(2.w),
                        Text('kal',
                            style: TextFontStyle.headline12c545454Figtreew500
                                .copyWith(fontSize: 16.sp))
                      ],
                    )
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){NavigationService.navigateTo(Routes.categoriseMealScreen);},
                  child: SvgPicture.asset(
                    AppIcons.blackIcon,
                    height: 30.h,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
