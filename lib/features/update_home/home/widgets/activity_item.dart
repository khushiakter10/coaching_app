import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ActivityItem extends StatefulWidget {
  final String time;
  final String title;
  final String svgPath;
  final Color color;
  final String? duration;
  final String? calories;
  final String? description;

  const ActivityItem({
    required this.time,
    required this.title,
    required this.svgPath,
    required this.color,
    this.duration,
    this.calories,
    this.description,
    Key? key,
  }) : super(key: key);

  @override
  State<ActivityItem> createState() => _ActivityItemState();
}

class _ActivityItemState extends State<ActivityItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final hasDetails = widget.duration != null ||
        widget.calories != null ||
        widget.description != null;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: hasDetails
          ? Card(
              color: Colors.transparent,
              elevation: 0,
              child: ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                elevation: 0,
                dividerColor: Colors.transparent,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Colors.transparent,
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 1.w),
                        visualDensity: VisualDensity(vertical: -4),
                        leading: CircleAvatar(
                          backgroundColor: widget.color,
                          child: SvgPicture.asset(
                            widget.svgPath,
                            width: 18.sp,
                            height: 18.sp,
                            colorFilter: ColorFilter.mode(
                              AppColor.c192126,
                              BlendMode.srcIn,
                            ),
                          ),
                          radius: 16.r,
                        ),
                        title: Text(
                          widget.time,
                          style: TextStyle(
                              fontSize: 12.sp, color: Colors.grey[600]),
                        ),
                        subtitle: Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        padding: EdgeInsets.only(left: 32.w),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColor.cE0E1E3,
                              width: 1.w,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.duration != null ||
                                widget.calories != null)
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.h),
                                child: Row(
                                  children: [
                                    if (widget.duration != null)
                                      Row(
                                        children: [
                                          Icon(Icons.timer,
                                              size: 16.sp,
                                              color: AppColor.c878A94),
                                          SizedBox(width: 4.w),
                                          Text(widget.duration!,
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: AppColor.c878A94)),
                                        ],
                                      ),
                                    if (widget.duration != null &&
                                        widget.calories != null)
                                      SizedBox(width: 16.w),
                                    if (widget.calories != null)
                                      Row(
                                        children: [
                                          Icon(Icons.local_fire_department,
                                              size: 16.sp,
                                              color: AppColor.c878A94),
                                          SizedBox(width: 4.w),
                                          Text(widget.calories!,
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: AppColor.c878A94)),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            if (widget.description != null)
                              Text(
                                widget.description!,
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.grey[700]),
                              ),
                          ],
                        ),
                      ),
                    ),
                    isExpanded: _isExpanded,
                  ),
                ],
              ),
            )
          : Row(
              children: [
                CircleAvatar(
                  backgroundColor: widget.color,
                  child: SvgPicture.asset(
                    widget.svgPath,
                    width: 18.sp,
                    height: 18.sp,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  radius: 16.r,
                ),
                UIHelper.horizontalSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.time,
                        style: TextStyle(
                            fontSize: 12.sp, color: Colors.grey[600])),
                    Text(widget.title,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
    );
  }
}
