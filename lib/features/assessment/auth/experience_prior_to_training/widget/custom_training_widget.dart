import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTrainingWidget extends StatefulWidget {
  final List<Widget> icons;
  final List<String> texts;
  final ValueChanged<int>? onSelectionChanged;

  const CustomTrainingWidget({
    super.key,
    required this.icons,
    required this.texts,
    this.onSelectionChanged,
  });

  @override
  _CustomTrainingWidgetState createState() => _CustomTrainingWidgetState();
}

class _CustomTrainingWidgetState extends State<CustomTrainingWidget> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.icons.length, (index) {
        final isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            if (widget.onSelectionChanged != null) {
              widget.onSelectionChanged!(index);
            }
          },
          child: Container(
            width: 166.w,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.c192126 : AppColor.cF3F3F4,
              borderRadius: BorderRadius.circular(24.r),
              border: Border.all(
                color: isSelected ? AppColor.cDADBDC : Colors.transparent,
                width: 2.w,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 24.h,
                        child: widget.icons[index],
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Text(
                        widget.texts[index],
                        style: isSelected
                            ? TextFontStyle.headline16FFFFFFFigtreew500
                            : TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(25.h),
                  Checkbox(
                    value: isSelected,
                    onChanged: (_) {
                      setState(() {
                        selectedIndex = index;
                      });
                      if (widget.onSelectionChanged != null) {
                        widget.onSelectionChanged!(index);
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: AppColor.cFFFFFF,
                    checkColor: AppColor.c192126,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
