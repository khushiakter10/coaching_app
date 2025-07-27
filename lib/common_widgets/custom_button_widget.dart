import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool showArrow;
  final Widget? arrwicon;
  final double? borderRadius;
  final Color? color;
  final TextStyle? textStyle;
  final double ? heightbutton;


  const CustomButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.showArrow = true,
    this.arrwicon,
    this.borderRadius,
    this.color,
    this.textStyle, this.heightbutton,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child:
      Container(
        width: double.infinity,
      height: heightbutton,
        decoration: BoxDecoration(
          color: color ?? AppColor.c111214,
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 19.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(text,style: textStyle),

            if (showArrow && arrwicon != null) ...[
              UIHelper.horizontalSpace(12.w),
              arrwicon!,
            ],
          ],
        ),
      ),
    );
  }
}
