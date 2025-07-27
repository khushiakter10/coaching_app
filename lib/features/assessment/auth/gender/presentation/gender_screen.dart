import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int? selectedIndex;

  final List<String> goalsicon = [
    AppIcons.manicon,
    AppIcons.kannvaicon,
  ];

  final List<String> goalstext = [
    'Man',
    'Kvinna',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 70.h,
        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '2 av 12',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(child: Text(  'Vad är ditt kön?',  style: TextFontStyle.headline30c192126Urbanistw600)),
            UIHelper.verticalSpace(48.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(goalstext.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 165.w,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColor.c192126 : AppColor.cF3F3F4,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(
                        color: isSelected ? AppColor.cE3E4E5 : Colors.transparent,
                        width: 2.w,
                      ),
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                goalsicon[index],
                                height: 24.h,
                                colorFilter: ColorFilter.mode(
                                  isSelected ? AppColor.cFFFFFF : AppColor.c192126,
                                  BlendMode.srcIn,
                                ),
                              ),
                              UIHelper.horizontalSpace(8.w),
                              Text(
                                goalstext[index],
                                style: isSelected
                                    ? TextFontStyle.headline16FFFFFFFigtreew500
                                    : TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 16.sp),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(20.h),
                          Checkbox(
                            value: isSelected,
                            onChanged: (_) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            activeColor:AppColor.cFFFFFF,
                            checkColor: AppColor.c192126
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),


          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.r, bottom: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButtonWidget(
              textStyle: TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 16.sp),
              color: AppColor.cE4E4E4,
              text: 'Föredrar att hoppa över, tack',
              borderRadius: 100.r,
              heightbutton: 56.h,
              onPressed: () {
              },
            ),
            UIHelper.verticalSpace(12.h),
            CustomButtonWidget(
             textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Fortsätt',
              borderRadius: 100.r,
              heightbutton: 56.h,
              onPressed: () {
               NavigationService.navigateTo(Routes.ageScreen);
              },
            ),
          ],
        ),
      ),

    );
  }
}
