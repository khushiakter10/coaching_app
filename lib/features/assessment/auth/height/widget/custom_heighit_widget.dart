import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomHeightWidget extends StatelessWidget {
  final int value;
  final int selectedValue;

  const CustomHeightWidget({
    super.key,
    required this.value,
    required this.selectedValue, required String unit,
  });

  double getOpacity(int difference) {
    switch (difference) {
      case 0:
        return 1.0;
      case 1:
        return 0.7;
      case 2:
        return 0.4;
      default:
        return 0.2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final diff = (selectedValue - value).abs();
    final isSelected = diff == 0;
    final double fontSize = isSelected ? 40 : (diff == 1 ? 28 : 22);
    final TextStyle textStyle = isSelected
        ? TextFontStyle.headline40c252C32Figtreew700
        : TextFontStyle.headline20c6B7280Figtreew400.copyWith(fontSize: 28.sp);

    return Center(child: Opacity(opacity: getOpacity(diff),
        child: Text(   '$value',  style: textStyle.copyWith(fontSize: fontSize)),
      ),
    );
  }
}
