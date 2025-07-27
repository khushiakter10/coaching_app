import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekProgressWidget extends StatelessWidget {
  const WeekProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Denna vecka', style: TextFontStyle.headline16c393C43Figtreew600),
        UIHelper.verticalSpace(8),
        Row(
          children: List.generate(7, (index) {
            final days = ['Må', 'Ti', 'On', 'To', 'Fr', 'Lö', 'Sö'];
            final statuses = [true, false, true, null, null, null, null];
            return Padding(
              padding: EdgeInsets.only(right: index < 6 ? 12.w : 0),
              child: Column(
                children: [
                  _buildDayCircle(statuses[index]),
                  SizedBox(height: 4.h),
                  Text(
                    days[index],
                    style: TextFontStyle.headline14c676C75Figtreew500,
                  ),
                ],
              ),
            );
          }),
        ),
        UIHelper.verticalSpace(20),
      ],
    );
  }

  Widget _buildDayCircle(bool? completed) {
    Color color;
    IconData? icon;
    if (completed == true) {
      color = AppColor.c22C55E;
      icon = Icons.check;
    } else if (completed == false) {
      color = AppColor.cEF4444;
      icon = Icons.close;
    } else {
      color = AppColor.cD1D5DB;
      icon = null;
    }
    return CircleAvatar(
      radius: 22.r,
      backgroundColor: color.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.zero,
        child: CircleAvatar(
          radius: 10.r,
          backgroundColor: color,
          child: icon != null
              ? Icon(icon, color: Colors.white, size: 16.sp)
              : null,
        ),
      ),
    );
  }
}
