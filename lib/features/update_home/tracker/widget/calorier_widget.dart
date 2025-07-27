import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CaloriesWidget extends StatelessWidget {
  final double currentKcal;
  final double totalKcal;

  const CaloriesWidget({
    super.key,
    required this.currentKcal,
    required this.totalKcal,
  });

  @override
  Widget build(BuildContext context) {
    final double remainingKcal = totalKcal - currentKcal;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppIcons.firehorse, height: 16.h),
              UIHelper.horizontalSpace(8.w),
              Text('Kalorier', style: TextFontStyle.headline20c4D5260Figtreetow700.copyWith(fontSize: 14.sp)),
            ],
          ),
          SizedBox(
            height: 150.h,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  startAngle: 180,
                  endAngle: 0,
                  showTicks: false,
                  showLabels: false,
                  minimum: 0,
                  maximum: totalKcal,
                  radiusFactor: 1.0,
                  canScaleToFit: true,
                  axisLineStyle: AxisLineStyle(
                    thickness: 0.2,
                    thicknessUnit: GaugeSizeUnit.factor,
                    color: AppColor.cF4F5F5,
                  ),
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: currentKcal * 0.6,
                      width: 0.2,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.grey,
                      cornerStyle: CornerStyle.bothCurve,
                    ),
                    RangePointer(
                      value: currentKcal,
                      width: 0.2,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: AppColor.cCEE9FF,
                    ),
                    NeedlePointer(
                      value: currentKcal,
                      enableAnimation: true,
                      needleLength: 0.7,
                      needleStartWidth: 0,
                      needleEndWidth: 8,
                      knobStyle: KnobStyle(
                        knobRadius: 0.07,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: AppColor.cFFFFFF,
                      ),
                      needleColor: Colors.lightBlue.shade100,
                      tailStyle: TailStyle(width: 0, length: 0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('${currentKcal.toInt()}', style: TextFontStyle.headline20c4D5260Figtreetow700),
              UIHelper.horizontalSpace(4.w),
              Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: Text('kcal', style: TextFontStyle.headline12c545454Figtreew500.copyWith(fontSize: 14.sp)),
              ),
            ],
          ),
          Row(
            children: [
              Text('Återstående:', style: TextFontStyle.headline12c878A94Figtreew400.copyWith(fontSize: 10.sp)),
              UIHelper.horizontalSpace(8.w),
              Text('${remainingKcal.toInt()} kcal', style: TextFontStyle.headline12c878A94Figtreew400.copyWith(fontSize: 10.sp)),
            ],
          ),
          UIHelper.verticalSpace(5.h),
        ],
      ),
    );
  }
}
