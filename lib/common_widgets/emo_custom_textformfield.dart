import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final IconData? trailingIcon;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap; // Optional onTap callback for GestureDetector
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Color? backgroundColor; // New parameter for background color
  final double? height; // Height parameter
  final double? width; // Width parameter
  final double? borderRadius;
  final bool? enable;

  const CustomTextField({
    super.key,
    this.readOnly = false,
    this.onTap, // Default is null
    required this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText = false,
    this.onTrailingIconPressed,
    this.controller,
    this.keyboardType,
    this.validator,
    this.focusNode,
    this.onChanged,
    this.textInputAction,
    this.onFieldSubmitted,
    this.backgroundColor, // Accepts the background color
    this.height = 75, // Default height
    this.width = double.infinity, // Default width is infinity
    this.borderRadius = 50, this.enable, // Default border radius
  });

  @override
  Widget build(BuildContext context) {
    double verticalPadding =
        (height ?? 58) / 5; // Dynamic padding based on height

    return SizedBox(
      width: width, // Width set to the passed parameter or default infinity
      height: height, // Height set to the passed parameter or default 56
      child: TextFormField(
        cursorColor: AppColor.c2B2E35,
        enabled:enable ,
        readOnly: readOnly,
        onTap: onTap,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        focusNode: focusNode,
        onChanged: onChanged,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        style: const TextStyle(color: AppColor.c000000),
        showCursor: true,
        decoration: InputDecoration(
          fillColor: backgroundColor ??
              AppColor.blackColor
                  , // Use the backgroundColor passed or default
          contentPadding:
          EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 5.w),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColor.c1B1B1D),
          prefixIcon: leadingIcon != null
              ? Padding(
            padding: EdgeInsets.all(15.w),
            child: SvgPicture.asset(
              leadingIcon!,
            ),
          )
              : null,
          suffixIcon: trailingIcon != null
              ? IconButton(
            icon: Icon(
              trailingIcon,
              color: Colors.white,
            ),
            onPressed: onTrailingIconPressed,
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                borderRadius!), // Use the passed border radius
            borderSide: BorderSide(
              color: AppColor.c0B50FE.withOpacity(0.32),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.32),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide:
            BorderSide(color: Colors.grey, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.32)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.32)),
          ),
          errorStyle: TextStyle(),
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
