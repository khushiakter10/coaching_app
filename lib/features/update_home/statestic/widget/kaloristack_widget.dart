
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';


class KaloristackWidget extends StatelessWidget {
  final String caloriText;
 final String kalori;

  const KaloristackWidget({
    super.key,
    required this.caloriText,
    required this.kalori,


  });

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> nutritionList = [
      {
        'title': kalori,
        'value': '1.7',
        'total': '/2.5 kcal',
        'color': AppColor.cEFEFF0,
      },
      {
        'title': 'Protein',
        'value': '25',
        'total': '/32 ',
        'color': AppColor.cCEE9FF,
      },
      {
        'title': 'Kolhydrater',
        'value': '67',
        'total': '/120 ',
        'color': AppColor.cFFF080,
      },
      {
        'title': 'Fetter',
        'value': '42',
        'total': '/48 ',
        'color': AppColor.cDAF17E,
      },
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              caloriText,
              style: TextFontStyle.headline16c212738Figtreew500,
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nutritionList.length,
                itemBuilder: (context, index) {
                  final item = nutritionList[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                      decoration: BoxDecoration(
                        color: item['color'],
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: TextFontStyle.headline16c212738Figtreew500
                                .copyWith(fontSize: 12.sp),
                          ),
                          UIHelper.verticalSpace(7.h),
                          LinearPercentIndicator(
                            padding: EdgeInsets.only(right: 8.r),
                            width: 80.w,
                            lineHeight: 8.h,
                            percent: 0.5,
                            backgroundColor: AppColor.cFFFCFB,
                            progressColor: AppColor.cBCBEC3,
                            barRadius: Radius.circular(12.r),
                            animation: true,
                          ),
                          UIHelper.verticalSpace(7.h),

                          Row(
                            children: [
                              Text(item['value'],
                                  style: TextFontStyle.headline12c545454Figtreew500),
                              UIHelper.horizontalSpace(8.w),
                              Text('/${item['total']} g',
                                  style: TextFontStyle.headline11c878A94Satoshiw500)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
