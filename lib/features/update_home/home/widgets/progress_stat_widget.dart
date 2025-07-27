import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProgressStatWidget extends StatelessWidget {
  final String label;
  final int? hours;
  final int? minutes;
  final int? value;
  final ProgressStatType type;

  const ProgressStatWidget.time({
    required this.label,
    required this.hours,
    required this.minutes,
    Key? key,
  })  : value = null,
        type = ProgressStatType.time,
        super(key: key);

  const ProgressStatWidget.calories({
    required this.label,
    required this.value,
    Key? key,
  })  : hours = null,
        minutes = null,
        type = ProgressStatType.calories,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 90.w,
            child: Text(
              label,
              style: TextFontStyle.headline14364B63Satoshiw400,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: type == ProgressStatType.time
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        hours.toString(),
                        style: TextFontStyle.textStyle20c132234SatoshiW500,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'Timmar',
                        style: TextFontStyle.textStyle14Satoshic616161W500,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        minutes.toString(),
                        style: TextFontStyle.textStyle20c132234SatoshiW500,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'Minuter',
                        style: TextFontStyle.textStyle14Satoshic616161W500,
                      ),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        value.toString(),
                        style: TextFontStyle.textStyle20c132234SatoshiW500,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        'Kcal',
                        style: TextFontStyle.textStyle14Satoshic616161W500,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

enum ProgressStatType { time, calories }
