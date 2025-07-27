import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomTextFormfield extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? leadingIcon;
  final String? trailingIcon;
  final bool? obscureText;
  final VoidCallback? onTrailingIconPressed;
  final FormFieldValidator<String>? validator;

  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextStyle? labelTextStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextStyle? errorStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  final BorderSide? borderSide;
  final VoidCallback? onTap;

  const CustomTextFormfield({
    super.key,
    this.textStyle,
    this.controller,
    this.hintText,
    this.labelText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText,
    this.onTrailingIconPressed,
    this.validator,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly = false,
    this.fillColor = AppColor.cF3F3F4,
    this.filled = true,
    this.borderRadius = const BorderRadius.all(Radius.circular(19)),
    this.hintStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.errorStyle,
    this.floatingLabelBehavior,
    this.isDense = false,
    this.borderSide = const BorderSide(color: Colors.transparent),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
       readOnly: readOnly ?? false,
      onTap: onTap,
      obscureText: obscureText ?? false,
      style: textStyle,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ?? TextFontStyle.headline16c393C43Figtreew600,
        labelText: labelText,
        labelStyle:
            labelTextStyle ?? TextFontStyle.headline16c393C43Figtreew600,
        fillColor: fillColor ?? AppColor.cF3F3F4,
        filled: filled ?? true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense,
        border: OutlineInputBorder(
          borderRadius: borderRadius?? BorderRadius.circular(19.r),
          borderSide: borderSide!,
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        prefixIcon: leadingIcon != null
            ? Padding(
                padding: EdgeInsets.all(12.h),
                child: SvgPicture.asset(
                  leadingIcon!,
                  height: 24.h,
                  fit: BoxFit.scaleDown,
                ),
              )
            : null,
        suffixIcon: trailingIcon != null
            ? GestureDetector(
                onTap: onTrailingIconPressed,
                child: Padding(
                  padding: EdgeInsets.all(12.h),
                  child: SvgPicture.asset(
                    trailingIcon!,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              )
            : suffixIcon,
      ),
    );
  }
}
