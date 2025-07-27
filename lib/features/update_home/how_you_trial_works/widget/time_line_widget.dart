import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';




class TimelineListWidget extends StatelessWidget {
  final List<Map<String, String>> timelineData;
  final List<String> imageList;

  const TimelineListWidget({
    super.key,
    required this.timelineData,
    required this.imageList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: List.generate(timelineData.length, (index) {
          final item = timelineData[index];
          return TimelineTile(
            lineXY: 0.1,
            isFirst: index == 0,
            isLast: index == timelineData.length - 1,
            indicatorStyle: IndicatorStyle(
              width: 35.w,
              height: 50.h,
              indicator: CircleAvatar(
                backgroundColor: AppColor.c192126,
                child: SvgPicture.asset(imageList[index]),
              ),
            ),
            beforeLineStyle: LineStyle(
              color: AppColor.c192126,
              thickness: 13,
            ),
            endChild: Container(
              decoration: BoxDecoration(
                color: AppColor.cFFFFFF,
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 11.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(15.h),

                  Text(item["title"] ?? '',style: TextFontStyle.headline16c393939Figtreew700, ),

                  UIHelper.verticalSpace(6.h),
                  Text(item["description"] ?? '',  style: TextFontStyle.headline14c545454Figtreew400),



                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
