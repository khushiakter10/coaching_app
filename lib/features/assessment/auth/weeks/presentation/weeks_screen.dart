import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WeeksScreen extends StatefulWidget {
  const WeeksScreen({super.key});

  @override
  State<WeeksScreen> createState() => _WeeksScreenState();
}

class _WeeksScreenState extends State<WeeksScreen> {
  int selectedNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '8 av 12',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(14.sp),

              child: Text('Hur många veckor kommer du att åta dig?',  style: TextFontStyle.headline30c192126Urbanistw600,textAlign: TextAlign.center)),
            UIHelper.verticalSpace(59.h),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan( text: "$selectedNumber", style: TextFontStyle.headline180c111214Urbanistw800),

                  TextSpan( text: "x",style: TextFontStyle.headline180c111214Urbanistw800),



                ],
              ),
            ),
            UIHelper.verticalSpace(32.h),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
             padding: EdgeInsets.symmetric( vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColor.cF3F3F4,
                borderRadius: BorderRadius.circular(27.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6, (index) {
                  int number = index + 1;
                  bool isSelected = selectedNumber == number;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedNumber = number;
                      });
                    },
                    child: Container(
                      height: 55.h,
                      width: 55.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.r),
                        border: isSelected
                            ? Border.all(color: AppColor.cD0D1D3, width: 5)
                            : null,
                      ),
                      child: Text("$number",
                        style: isSelected
                            ? TextFontStyle.headline20cFFFFFFWorkSansw700
                            : TextFontStyle.headline20cBABBBEUrbanistw600,
                      ),
                    ),
                  );
                }),
              ),
            ),
            UIHelper.verticalSpace(32.h),
            Text(  "Jag är åtagit mig att träna  $selectedNumber gånger i veckan",    style: TextFontStyle.headline16c393C43Urbanistw400,  textAlign: TextAlign.center),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UIHelper.verticalSpace(12.h),

            CustomButtonWidget(
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Fortsätt',
              borderRadius: 100.r,
              heightbutton: 56.h,
              onPressed: () {
                NavigationService.navigateTo(
                    Routes.calorieScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
