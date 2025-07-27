import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/features/update_home/statestic/widget/kaloristack_widget.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KaloristatistikWidget extends StatelessWidget {
  final String title;
  const KaloristatistikWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.cE0E1E3),
          borderRadius: BorderRadius.circular(20.r),
          color: AppColor.cFFFCFB,
          boxShadow: [
            BoxShadow(
              color: AppColor.cFFFFFF,
              blurRadius: 8.r,
              spreadRadius: 2.r,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    title,
                  style: TextFontStyle.headline16c212738Figtreew500,
                ),
                SvgPicture.asset(AppIcons.doticon, height: 24.h),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                      color: AppColor.cCEE9FF,
                      borderRadius: BorderRadius.circular(5.r)),
                ),
                UIHelper.horizontalSpace(6.w),

                Text('Aktiva kalorier',style: TextFontStyle.headline12c878A94Figtreew400.copyWith(fontSize: 11.sp)),
                UIHelper.horizontalSpace(16.w),

                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                      color: AppColor.cEFEFF0,
                      borderRadius: BorderRadius.circular(5.r)),
                ),
                UIHelper.horizontalSpace(6.w),
                Text('Vila kalorier',    style: TextFontStyle.headline12c878A94Figtreew400  .copyWith(fontSize: 11.sp)),

              ],
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              height: 200.h,
              width: double.infinity,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 20000,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const days = [
                            'Sön',
                            'Mån',
                            'Tis',
                            'Ons',
                            'Tor',
                            'Fre',
                            'Lör'
                          ];
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              days[value.toInt()],
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: 5000,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '${value.toInt()}',
                            style: const TextStyle(fontSize: 12),
                          );
                        },
                      ),
                    ),
                    topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 5000,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: AppColor.cE0E1E3,
                        strokeWidth: 1.w,
                      );
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          toY: 11000,
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 13000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 6500, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          toY: 13000,
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 13000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 6500, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          toY: 18000,
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 18000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 11000, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          toY: 17000,
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 17000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 11000, AppColor.cFFF080),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                          toY: 16000,
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 16000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 12000, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                          toY: 12000,
                          color: Color(0xFFCEE9FF),
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 12000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 1000, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(
                          toY: 14000,
                          color: Color(0xFFCEE9FF),
                          width: 20.w,
                          borderRadius: BorderRadius.circular(16.r),
                          rodStackItems: [
                            BarChartRodStackItem(6500, 18000, AppColor.cEFEFF0),
                            BarChartRodStackItem(0, 1100, AppColor.cCEE9FF),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(16.h),
            KaloristackWidget(caloriText: '', kalori: 'Kalorier'),
          ],
        ),
      ),
    );
  }
}