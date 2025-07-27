import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SingleSwitchSelectorWidget extends StatefulWidget {
  final String title;
  final List<String> options;

  const SingleSwitchSelectorWidget({
    super.key,
    required this.title,
    required this.options,
  });

  @override
  State<SingleSwitchSelectorWidget> createState() => _SingleSwitchSelectorWidgetState();
}

class _SingleSwitchSelectorWidgetState extends State<SingleSwitchSelectorWidget> {
  int selectedSwitchIndex = -1;

  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColor.cF4F4F5,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextFontStyle.headline16000000Figtreew600,
            ),
            UIHelper.verticalSpace(15.h),
            ...List.generate(widget.options.length, (index) {
              return Column(
                children: [
                  buildSwitchRow(widget.options[index], index),
                  if (index != widget.options.length - 1) buildDivider(),
                ],
              );
            }),
          ],
        ),
      );
  }


  Widget buildSwitchRow(String title, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextFontStyle.headline16000000Figtreew600.copyWith(fontSize: 14.sp),
        ),

        Transform.scale(scale: 0.75,
          child: CupertinoSwitch(
            inactiveThumbColor: AppColor.c070707,
            thumbColor: AppColor.cFFFFFF,
            inactiveTrackColor: AppColor.cD7D7D7,
            activeTrackColor: AppColor.c262626,

            value: selectedSwitchIndex == index,
            onChanged: (bool value) {
              setState(() {
                selectedSwitchIndex = value ? index : -1;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Column(
      children: [
        UIHelper.verticalSpace(9.h),
        Divider(color: AppColor.cE0E0E1, height: 1.h),
        UIHelper.verticalSpace(9.h),
      ],
    );
  }
}