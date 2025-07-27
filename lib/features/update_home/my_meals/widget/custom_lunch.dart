import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoryWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isDisabled;
  final BorderRadius? borderRadius;

  const CategoryWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.isDisabled,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius??

       BorderRadius.circular(10.r),
      ),
      label: Text(label),
      backgroundColor: isSelected ? AppColor.c000000 : AppColor.cF3F4F6,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}
