
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BilledMonthlyWidget extends StatelessWidget {
  final bool isFirstSelected;
  final String? saveLabel;
  final ValueChanged<bool> onChanged;

  const BilledMonthlyWidget({
    super.key,
    required this.isFirstSelected,
    required this.onChanged,
    this.saveLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onChanged(true),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 166.w,
                height: 146.h,
                decoration: BoxDecoration(
                  color: AppColor.c151414,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: isFirstSelected
                        ? AppColor.c096EF9
                        : AppColor.c5B5A5A,
                    width: 2.w,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 7.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Månatlig',
                          style: isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500),
                      UIHelper.verticalSpace(2.h),
                      Text('\$20.00',
                          style: (isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500)
                              .copyWith(fontSize: 26.sp)),
                      UIHelper.verticalSpace(41.h),
                      Text('Faktureras Månatligen',
                          style: (isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500)
                              .copyWith(fontSize: 14.sp)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -3.h,
                right: -2.w,
                child: isFirstSelected
                    ? SvgPicture.asset(AppIcons.circle, height: 20.h)
                    :  SizedBox.shrink(),
              ),
            ],
          ),
        ),
        UIHelper.horizontalSpace(11.w),
        GestureDetector(
          onTap: () => onChanged(false),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 166.w,
                height: 146.h,
                decoration: BoxDecoration(
                  color: AppColor.c151414,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: !isFirstSelected
                        ? AppColor.c096EF9
                        : AppColor.c5B5A5A,
                    width: 2.w,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 7.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Årlig',
                          style: !isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500),
                      UIHelper.verticalSpace(2.h),
                      Text('\$200.00',
                          style: (!isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500)
                              .copyWith(fontSize: 26.sp)),
                      UIHelper.verticalSpace(19.h),
                      Text('Gratis 1 Veckas',
                          style: (!isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500)
                              .copyWith(
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.cFFFFFF,
                            decorationThickness: 1,
                          )),
                      Text('Provperiod',
                          style: (!isFirstSelected
                              ? TextFontStyle.headline16c096EF9Figtreew500
                              : TextFontStyle.headline16FFFFFFFigtreew500)
                              .copyWith(
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.cFFFFFF,
                            decorationThickness: 1,
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -3.h,
                right: -2.w,
                child: !isFirstSelected
                    ? SvgPicture.asset(AppIcons.circle, height: 20.h)
                    : (saveLabel != null
                    ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 7.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: AppColor.c151414,
                    borderRadius: BorderRadius.circular(36.r),
                    border: Border.all(
                        color: AppColor.c5B5A5A, width: 2.w),
                  ),
                  child: Text(
                    saveLabel!,
                    style: TextFontStyle.headline16cFFFFFFFigtreew600
                        .copyWith(fontSize: 12.sp),
                  ),
                )
                    : const SizedBox.shrink()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



