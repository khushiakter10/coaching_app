import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CreatOwnWorkOutTwoScreen extends StatefulWidget {
  const CreatOwnWorkOutTwoScreen({super.key});

  @override
  State<CreatOwnWorkOutTwoScreen> createState() => _CreatOwnWorkOutTwoScreenState();
}

class _CreatOwnWorkOutTwoScreenState extends State<CreatOwnWorkOutTwoScreen> {
  final List<String> text = [
    'Pull-ups',
    'Knäböj',
    'Bänkpress',
    'Marklyft',
    'Stångrodd',
    'Bicepscurl',
    'Tricepspress',
  ];

  int? selectedIndex; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Lägg till ny träning'),

      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            SizedBox(
              height: 500.h,
              child: ListView.separated(
                itemCount: text.length,
                separatorBuilder: (context, index) => UIHelper.verticalSpace(9.h),
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = index;
                        }
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: isSelected ? Colors.black : AppColor.cF3F3F4,
                        border: Border.all(
                          color: AppColor.cD7D7D7,
                          width: 1.w,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                      child: Text(
                        text[index],
                        style: TextFontStyle.headline16c212738Figtreew500.copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
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
              heightbutton: 56.h,
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Spara och lägg till träning',
              borderRadius: 100.r,
              onPressed: () {
                NavigationService.navigateTo(Routes.creatOwnWorkThreeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
