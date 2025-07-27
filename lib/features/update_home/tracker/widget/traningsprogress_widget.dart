import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TraningsprogressWidget extends StatelessWidget {
  final String text;
  const TraningsprogressWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColor.cF4F4F4,
          borderRadius: BorderRadius.circular(16.r)
      ),
      child: Padding(
        padding:  EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,style: TextFontStyle.headline16c212738Figtreew500),
            UIHelper.verticalSpace(16.h),
            Text('75%',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 24.sp)),
            UIHelper.verticalSpace(2.h),
            Text('Måluppfyllelse',style: TextFontStyle.headline12c878A94Figtreew400,),
            UIHelper.verticalSpace(16.h),


            Row(
              children: [
                SvgPicture.asset(AppIcons.cicleblu),
                UIHelper.horizontalSpace(8.w),
                Column(
                  children: [
                    Text('Konditionsträning',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp)),
                    Text('5/6 set av HIIT-pass',style: TextFontStyle.headline12c878A94Figtreew400,),


                  ],
                ),
                Spacer(),
                Text('85%',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp),),
              ],
            ),
            UIHelper.verticalSpace(16.h),


            Row(
              children: [
                SvgPicture.asset(AppIcons.cicleyellw),
                UIHelper.horizontalSpace(8.w),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Styrketräning',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp)),
                    Text('4/5 set av helkroppsstyrkecirkel',style: TextFontStyle.headline12c878A94Figtreew400,),


                  ],
                ),
                Spacer(),
                Text('75%',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp),),
              ],
            ),
            UIHelper.verticalSpace(16.h),


            Row(
              children: [
                SvgPicture.asset(AppIcons.ciclegreen),
                UIHelper.horizontalSpace(8.w),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Flexibilitetsträning',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp)),
                    Text('3/4 set av yogapass',style: TextFontStyle.headline12c878A94Figtreew400,),


                  ],
                ),
                Spacer(),
                Text('65%',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 14.sp),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}