import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomMeals extends StatelessWidget {
  final String medText;
  final String frukostText;
  const CustomMeals({
    super.key,
    required this.medText,
    required this.frukostText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670.h,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            decoration: BoxDecoration(
                color: AppColor.cFFFFFF,
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(color: AppColor.cE0E1E3, width: 2.w)),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.food,
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                    UIHelper.horizontalSpace(16.w),
                    Expanded(
                      child: Column(
                        children: [
                          Text(medText,
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextFontStyle.headline14c2B2B2BFigtreew500),
                          UIHelper.verticalSpace(8.h),
                          Row(
                            children: [
                              Text(frukostText,
                                  style: TextFontStyle
                                      .headline12cA1A1A1Nunitow400),
                              UIHelper.horizontalSpace(8.w),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3.h, horizontal: 3.w),
                                decoration: BoxDecoration(
                                    color: AppColor.cA1A1A1,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              UIHelper.horizontalSpace(8.w),
                              Text('30 min',
                                  style: TextFontStyle
                                      .headline12cA1A1A1Nunitow400),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(5.h),
                Divider(color: AppColor.cE0E1E3, thickness: 1),
                UIHelper.verticalSpace(5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Fett",
                            style: TextFontStyle.headline12c929292Nunitow400),
                        UIHelper.verticalSpace(2.h),
                        Text("1,5 g",
                            style: TextFontStyle.headline14c676767Nunitow600),
                      ],
                    ),
                    UIHelper.horizontalSpace(16.w),
                    Column(
                      children: [
                        Text("Protein",
                            style: TextFontStyle.headline12c929292Nunitow400),
                        UIHelper.verticalSpace(2.h),
                        Text("10,9 g",
                            style: TextFontStyle.headline14c676767Nunitow600),
                      ],
                    ),
                    UIHelper.horizontalSpace(16.w),
                    Column(
                      children: [
                        Text("Kolhydrater",
                            style: TextFontStyle.headline12c929292Nunitow400),
                        UIHelper.verticalSpace(2.h),
                        Text("13,5 g",
                            style: TextFontStyle.headline14c676767Nunitow600),
                      ],
                    ),
                    UIHelper.horizontalSpace(16.w),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.plustitle, height: 20.h),
                        UIHelper.horizontalSpace(5.w),
                        Text('Lägg till i måltid',
                            style: TextFontStyle.headline12c2F2F2FFigtreew500)
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return UIHelper.verticalSpace(12.h);
        },
        itemCount: 4,
      ),
    );
  }
}
