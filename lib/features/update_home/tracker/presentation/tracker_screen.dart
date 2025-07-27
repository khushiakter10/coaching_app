import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/features/update_home/tracker/widget/calorier_widget.dart';
import 'package:coaching_app/features/update_home/tracker/widget/steg_widget.dart';
import 'package:coaching_app/features/update_home/tracker/widget/traningsprogress_widget.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';



class TrackerScreen extends StatelessWidget {
  TrackerScreen({super.key});

  final numberFormat = NumberFormat.decimalPattern('sv');
  final List<FlSpot> spots = const [
    FlSpot(7, 5),
    FlSpot(8, 4),
    FlSpot(9, 7),
    FlSpot(10, 4),
    FlSpot(11, 9),
    FlSpot(12, 5),
    FlSpot(13, 6),
  ];

  final double remainingKcal = 480;
  final double currentKcal = 520;
  final double totalKcal = 1000;

  @override
  Widget build(BuildContext context) {
    final formattedSteps = numberFormat.format(1050);
    final formattedYesterday = numberFormat.format(978);

    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarHeight: 60.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tracker', style: TextFontStyle.headline16c212738Figtreew500.copyWith(fontSize: 18.sp)),
            UIHelper.verticalSpace(6.h),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Text('Spåra dina dagliga aktiviteter. Gör ditt\n bästa för att nå högt!',style: TextFontStyle.headline12c878A94Figtreew400),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: CaloriesWidget(currentKcal: currentKcal, totalKcal: totalKcal)),
                UIHelper.horizontalSpace(12.w),
                Expanded(child: StepsWidget(spots: spots, formattedSteps: formattedSteps, formattedYesterday: formattedYesterday)),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            TraningsprogressWidget(text: 'Träningsprogress')
          ],
        ),
      ),
    );
  }
}
