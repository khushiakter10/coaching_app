import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class PersonalTrainingWidget extends StatelessWidget {
  const PersonalTrainingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.cFFFCFB,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.r),
        side: BorderSide(color: AppColor.cCDCDCD),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          spacing: 16.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    'assets/image/weightlifting.png',
                    width: 100.w,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Styrketräning',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    )),
                UIHelper.verticalSpace(6.h),
                Text('Styrkemästerskap',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.c000000)),
                UIHelper.verticalSpace(8.h),
                Row(
                  children: [
                    Chip(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        side: BorderSide(color: AppColor.cEFEFF0),
                      ),
                      backgroundColor: AppColor.cEFEFF0,
                      visualDensity: VisualDensity.compact,
                      label: Row(
                        children: [
                          SizedBox(
                            width: 14.w,
                            height: 14.h,
                            child: SvgPicture.asset(AppIcons.chartk),
                          ),
                          UIHelper.horizontalSpace(4.w),
                          Text('Avancerad',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.c4D5260)),
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpace(8.w),
                    Chip(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        side: BorderSide(color: AppColor.cEFEFF0),
                      ),
                      backgroundColor: AppColor.cEFEFF0,
                      visualDensity: VisualDensity.compact,
                      label: Row(
                        children: [
                          SizedBox(
                            width: 14.w,
                            height: 14.h,
                            child: SvgPicture.asset(AppIcons.monitorpaly),
                          ),
                          UIHelper.horizontalSpace(4.w),
                          Text('12 videor',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.c4D5260)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
