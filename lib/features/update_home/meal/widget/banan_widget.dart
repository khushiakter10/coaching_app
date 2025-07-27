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

class BanaWidget extends StatelessWidget {
  final String title;
  const BanaWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return


      GestureDetector(
        onTap: (){NavigationService.navigateTo(Routes.omelettScreen);},
        child: SizedBox(
        height: 400,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {

            return Container(
              padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
              decoration: BoxDecoration(
                  color: AppColor.cFFFCFB,
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(color: AppColor.cE0E1E3,width: 2.w)
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Image.asset(
                        AppImages.piza,
                        height: 82.h,
                        fit: BoxFit.cover,
                      ),

                      UIHelper.horizontalSpace(16.w),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                                 title  ,
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextFontStyle.headline16c212738Figtreew500
                            ),
                            UIHelper.verticalSpace(16.h),

                            Row(
                              children: [
                                Container( padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
                                  decoration: BoxDecoration(
                                    color: AppColor.cFFF7B8,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Text('Lunch',style: TextFontStyle.headline12c545454Figtreew500),
                                ),
                                UIHelper.horizontalSpace(8.w),


                                Container( padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 8.w),
                                    decoration: BoxDecoration(
                                      color: AppColor.cEFEFF0,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(AppIcons.chartk,height: 14.h),
                                        UIHelper.horizontalSpace(8.w),
                                        Text('Lunch',style: TextFontStyle.headline12c545454Figtreew500),

                                      ],
                                    )
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(16.h),

                  Divider( color: AppColor.cE0E1E3,  thickness: 1),


                  UIHelper.verticalSpace(16.h),
                  Row(
                    children: [
                      Text('400 Kal',style: TextFontStyle.headline12c545454Figtreew400),
                      UIHelper.horizontalSpace(8.w),

                      Container(
                          padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 3.w),
                          decoration: BoxDecoration(
                              color: AppColor.cBCBEC3,
                              borderRadius: BorderRadius.circular(9.r))),

                      UIHelper.horizontalSpace(8.w),
                      Text('50 g kolhydrater',style: TextFontStyle.headline12c545454Figtreew400),

                      UIHelper.horizontalSpace(8.w),

                      Container(
                          padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 3.w),
                          decoration: BoxDecoration(
                              color: AppColor.cBCBEC3,
                              borderRadius: BorderRadius.circular(9.r))),

                      UIHelper.horizontalSpace(8.w),
                      Text('12 g protein',style: TextFontStyle.headline12c545454Figtreew400),
                      UIHelper.horizontalSpace(8.w),

                      Container(
                          padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 3.w),
                          decoration: BoxDecoration(
                              color: AppColor.cBCBEC3,
                              borderRadius: BorderRadius.circular(9.r))),
                      UIHelper.horizontalSpace(8.w),
                      Text('16 g fetter',style: TextFontStyle.headline12c545454Figtreew400),



                    ],
                  )

                ],
              ),
            );



          },
          separatorBuilder: (BuildContext context, int index) {
            return UIHelper.verticalSpace(16.h);
          },
          itemCount: 3,

        ),
            ),
      );
  }
}