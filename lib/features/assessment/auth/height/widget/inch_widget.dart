import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'cusotm_inch_widget_tow.dart';
class InchWidget extends StatefulWidget {
  const InchWidget({super.key});

  @override
  State<InchWidget> createState() => _InchWidgetState();
}
class _InchWidgetState extends State<InchWidget> {
  final PageController _controller =
  PageController(initialPage: 6, viewportFraction: 0.2);
  final List<int> numbers = List.generate(12, (index) => index + 1);
  int selectedValue = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SizedBox(
        height: 300.h,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 45.h,
                margin: EdgeInsets.symmetric(horizontal: 23.w),
                decoration: BoxDecoration(
                  color: AppColor.cF3F3F4,
                  borderRadius: BorderRadius.circular(48.r),
                ),
              ),
              PageView.builder(
                controller: _controller,
                scrollDirection: Axis.vertical,
                itemCount: numbers.length,
                onPageChanged: (index) {
                  setState(() {
                    selectedValue = numbers[index];
                  });
                },
                itemBuilder: (_, index) {
                  final value = numbers[index];
                  return CustomInchWidget(
                    value: value,
                    selectedValue: selectedValue, unit: 'cm',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
