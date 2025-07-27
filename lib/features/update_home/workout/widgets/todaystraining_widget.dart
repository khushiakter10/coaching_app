import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class TodayTrainingWidget extends StatelessWidget {
  final String title;
  final double progress;

  const TodayTrainingWidget({
    super.key,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.cFFFCFB,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide(color: AppColor.cCDCDCD),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          spacing: 16.w,
          children: [
            Row(
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.c000000)),
              ],
            ),
            Row(
              spacing: 4.w,
              children: [
                Chip(
                  backgroundColor: AppColor.cE4E4E4,
                  visualDensity: VisualDensity.compact,
                  label: Text('3 Övningar',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.c4D5260)),
                ),
                Chip(
                  backgroundColor: AppColor.cE4E4E4,
                  visualDensity: VisualDensity.compact,
                  label: Text('3 set',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.c4D5260)),
                ),
                Chip(
                  backgroundColor: AppColor.cE4E4E4,
                  visualDensity: VisualDensity.compact,
                  label: Text('8-10 repetitioner',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.c4D5260)),
                ),
              ],
            ),
            LinearProgressIndicator(
              minHeight: 10.h,
              borderRadius: BorderRadius.circular(10.r),
              value: progress / 100,
              color: AppColor.c5C5C5C,
              backgroundColor: AppColor.cE9E9E9,
            ),
            Row(
              children: [
                Text('$progress% Komplett',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.c4D5260)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
