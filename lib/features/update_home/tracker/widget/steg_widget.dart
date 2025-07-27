import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StepsWidget extends StatelessWidget {
  final List<FlSpot> spots;
  final String formattedSteps;
  final String formattedYesterday;

  const StepsWidget({
    super.key,
    required this.spots,
    required this.formattedSteps,
    required this.formattedYesterday,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColor.cF4F4F4,
        borderRadius: BorderRadius.circular(16.r),

        boxShadow:  [
          BoxShadow(
            color: AppColor.cFFFFFF,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              SvgPicture.asset(AppIcons.liteIcon, height: 16.h),
              UIHelper.horizontalSpace(8.w),
              Expanded(
                child: Text('Steg', style: TextFontStyle.headline12c545454Figtreew500),
              ),
            ],
          ),
          UIHelper.verticalSpace(22.h),
          SizedBox(
            height: 112.h,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      interval: 1,
                      getTitlesWidget: (value, _) => Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(value.toInt().toString(), style: const TextStyle(fontSize: 12)),
                      ),
                    ),
                  ),
                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                minX: 7,
                maxX: 13,
                minY: 0,
                maxY: 10,
                extraLinesData: ExtraLinesData(
                  verticalLines: spots
                      .map((spot) => VerticalLine(
                    x: spot.x,
                    color: AppColor.cE0E1E3,
                    strokeWidth: 1.5,
                  ))
                      .toList(),
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    spots: spots,
                    dotData: FlDotData(show: true),
                    color: AppColor.cDAF17E,
                    barWidth: 3.w,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 22.h),
          Text("$formattedSteps steg", style: TextFontStyle.headline20c4D5260Figtreetow700),
          UIHelper.verticalSpace(5.h),
          Row(
            children: [
              Text('Igår:', style: TextFontStyle.headline12c545454Figtreew400.copyWith(fontSize: 10.sp)),
              Text('$formattedYesterday steg', style: TextFontStyle.headline12c545454Figtreew400.copyWith(fontSize: 10.sp)),
            ],
          )
        ],
      ),
    );
  }
}
