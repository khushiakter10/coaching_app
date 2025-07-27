
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/features/update_home/statestic/widget/appbar_widget.dart';
import 'package:coaching_app/features/update_home/statestic/widget/kaloristatistik_widget.dart';
import 'package:coaching_app/features/update_home/statestic/widget/viktdata_widget.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StatesticScreen extends StatefulWidget {
  const StatesticScreen({super.key});

  @override
  State<StatesticScreen> createState() => _StatesticScreenState();
}

class _StatesticScreenState extends State<StatesticScreen> {

  final maxY = 20000.0;
  final fixedY = 15000.0;

  int selectedIndex = -1;

  final List<String> labels = [
    '2 timmar\n15minuter',
    '2\ntimmar',
    '2 timmar\n30 minuter',
    '3\ntimmar',
    '2 timmar\n40 minuter',
    '2\ntimmar',
    '2 timmar\n 35 minuter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBarWidget(text: 'Analys'),
      body: SingleChildScrollView(
       padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ViktdataWidget(text: 'Viktdata'),
            UIHelper.verticalSpace(16.h),

            Padding(
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
                padding: EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(  'Träningsaktivitet',  style: TextFontStyle.headline16c212738Figtreew500),
                    UIHelper.verticalSpace(16.h),
                    SizedBox(
                      height: 300.h,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: maxY,
                              barTouchData: BarTouchData(
                                enabled: true,
                                touchTooltipData: BarTouchTooltipData(
                                  getTooltipItem: (_, __, ___, ____) => null,
                                ),

                                touchCallback: (event, response) {
                                  if (response != null &&
                                      response.spot != null &&
                                      event is FlTapUpEvent) {
                                    setState(() {
                                      selectedIndex = response.spot!.touchedBarGroupIndex;
                                    });
                                  }
                                },
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      const days = ['Sön', 'Mån', 'Tis', 'Ons', 'Tor', 'Fre', 'Lör'];
                                      if (value.toInt() < 0 || value.toInt() >= days.length) {
                                        return const SizedBox();
                                      }
                                      return Padding(
                                        padding:  EdgeInsets.only(top: 8.sp),
                                        child: Text(
                                          days[value.toInt()],
                                          style: TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 10.sp),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                              gridData: FlGridData(
                                show: true,
                                drawVerticalLine: false,
                                horizontalInterval: 5000,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: AppColor.cE0E1E3,
                                    strokeWidth: 0,
                                  );
                                },
                              ),
                              borderData: FlBorderData(show: false),
                              barGroups: List.generate(7, (index) {
                                double blueY = index.isEven ? fixedY * 0.4 : fixedY * 0.8;

                                final bool isSelected = selectedIndex == index;

                                return BarChartGroupData(
                                  x: index,
                                  barRods: [
                                    BarChartRodData(
                                      toY: fixedY,
                                      width: 35.w,
                                      borderRadius: BorderRadius.circular(20.r),
                                      rodStackItems: [
                                        BarChartRodStackItem(
                                          0,
                                          blueY,
                                          isSelected ? AppColor.cFFF080 : AppColor.cCEE9FF,
                                        ),
                                        BarChartRodStackItem(
                                          blueY,
                                          fixedY,
                                          AppColor.cF4F5F5,
                                        ),
                                      ],
                                      borderSide: isSelected
                                          ? BorderSide(color: AppColor.cE3D46B, width: 2.w)
                                          : BorderSide.none,
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                          Positioned.fill(
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: List.generate(7, (index) {
                                    double barHeight = (fixedY / maxY) * 300.h;
                                    return Container(
                                      width: 20.w,
                                      height: 250.h,
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: barHeight / 2 - 10.h),
                                        child: Text(
                                          labels[index],
                                          textAlign: TextAlign.center,
                                          style: TextFontStyle.headline11c878A94Satoshiw500.copyWith(
                                            fontSize: 10.sp,
                                            color: selectedIndex == index
                                                ? TextFontStyle.headline16c212738Figtreew500.color
                                                : AppColor.c878A94,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(16.h),

            KaloristatistikWidget(title: 'Kaloristatistik',),

            UIHelper.verticalSpace(16.h),
          ],
        ),
      ),
    );
  }
}
