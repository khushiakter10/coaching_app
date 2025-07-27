import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';


class CatagoryWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isDisabled;
  const CatagoryWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.isDisabled,
  });
  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      label: Text(label),
      backgroundColor: isSelected ? AppColor.c212121 : AppColor.cF3F4F6,
      labelStyle: TextStyle(color: isSelected ? AppColor.cF3F4F6 : AppColor.c212121),

    );
  }
}
