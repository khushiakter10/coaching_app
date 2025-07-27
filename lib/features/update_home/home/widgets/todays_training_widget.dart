import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TodaysTrainingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dagens träning',
              style: TextFontStyle.headline14c676C75Figtreew500),
          UIHelper.verticalSpace(8),
          Text('Push-dag', style: TextFontStyle.headline16c111214Figtreew700),
          UIHelper.verticalSpace(4),
          Text('5 övningar • 45 min',
              style: TextFontStyle.headline14c676C75Figtreew500),
          UIHelper.verticalSpace(16),
          CustomButtonWidget(
            heightbutton: 56.h,
            borderRadius: 100.r,
            text: 'Börja träna',
            showArrow: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
