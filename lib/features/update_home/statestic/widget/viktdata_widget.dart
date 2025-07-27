import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ViktdataWidget extends StatelessWidget {
  final String text;

   const ViktdataWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.cE0E1E3),
          borderRadius: BorderRadius.circular(20.r),
          color: AppColor.cFFFCFB,
          boxShadow:  [
            BoxShadow(
              color: AppColor.cFFFFFF,
              blurRadius: 8.r,
              spreadRadius: 2.r,
              offset: Offset(0, 3),
            ),
          ],

        ),
        padding:  EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextFontStyle.headline16c212738Figtreew500,
                ),
                //Spacer(),
                SvgPicture.asset(AppIcons.doticon,height: 24.h),

              ],
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                Text(
                    'Aktuell vikt',
                    style:  TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 12.sp)),
                Spacer(),
                Text('72',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 24.sp),),
                UIHelper.horizontalSpace(4.w),
                Text('kg',style: TextFontStyle.headline12c878A94Figtreew400,)

              ],
            ),
            UIHelper.verticalSpace(16.h),

            Row(
              children: [
                Text(
                    'Viktmål',
                    style:  TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 12.sp)),
                Spacer(),
                Text('65',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 24.sp),),
                UIHelper.horizontalSpace(4.w),
                Text('kg',style: TextFontStyle.headline12c878A94Figtreew400,)

              ],
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                Text(
                    'Framsteg',
                    style:  TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 12.sp)),
                Spacer(),
                Text('18',style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 24.sp),),
                UIHelper.horizontalSpace(4.w),
                Text('%',style: TextFontStyle.headline12c878A94Figtreew400,)

              ],
            ),
            UIHelper.verticalSpace(16.h),

            SizedBox(
              height: 200.h,
              width: double.infinity,
              child: Stack(
                children: [
                  LineChart(
                    LineChartData(
                      minY: 65,
                      maxY: 95,
                      lineBarsData: [
                        LineChartBarData(
                          spots:  [
                            FlSpot(0, 95),
                            FlSpot(1, 85),
                            FlSpot(2, 85),
                            FlSpot(3, 80),
                            FlSpot(4, 75),
                            FlSpot(5, 70),
                          ],
                          isCurved: true,
                          curveSmoothness: 0.3,
                          color: AppColor.cCEE9FF,
                          barWidth: 5.w,
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                AppColor.cE7F2FD,
                                AppColor.cE7F2FD,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),

                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                              radius: 6.r,
                              color: AppColor.cCEE9FF,
                              strokeWidth: 3.w,
                              strokeColor:  AppColor.cFFFCFB,
                            ),
                          ),
                        ),
                      ],
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              const months = ['Mar', 'Apr', 'Mej', 'Jun', 'Jul', 'Aug'];
                              return Padding(
                                padding:  EdgeInsets.only(top: 8.sp),
                                child: Text(
                                    months[value.toInt()],
                                    style: TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 10.sp)
                                ),
                              );
                            },
                          ),
                        ),
                        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      ),
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        horizontalInterval: 5,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: AppColor.cE0E1E3,
                            strokeWidth: 1.w,
                          );
                        },
                      ),
                      borderData: FlBorderData(show: false),
                      lineTouchData: LineTouchData(enabled: false), // Disable tooltip
                    ),
                  ),
                  // Overlay labels above data points
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final chartWidth = constraints.maxWidth - 40;
                      final chartHeight = 180 - 30;
                      final xStep = chartWidth / 5;
                      final yRange = 95 - 65;
                      final yPixelPerUnit = chartHeight / yRange;

                      return Stack(
                        children: [
                          for (var spot in const [
                            FlSpot(0, 95),
                            FlSpot(1, 85),
                            FlSpot(2, 85),
                            FlSpot(3, 80),
                            FlSpot(4, 75),
                            FlSpot(5, 70),
                          ])
                            Positioned(
                              left: spot.x * xStep + 20,
                              top: chartHeight - (spot.y - 65) * yPixelPerUnit - 20,
                              child: Text(
                                  '${spot.y.toInt()} kg',
                                  style:  TextFontStyle.headline12c545454Figtreew400.copyWith(fontSize: 10.sp)
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}