import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class QustionScreen extends StatefulWidget {
  const QustionScreen({super.key});

  @override
  State<QustionScreen> createState() => _QustionScreenState();
}

class _QustionScreenState extends State<QustionScreen> {
  final List<String> bestText = [
    'Varför är Webflow det bästa nocode-verktyget?',
    'När grundades Webflow?',
    'När grundades Webflow?',
    'När grundades Webflow?'
  ];

  final List<String> someText = [
    'Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat aute irure dolor',
  ];

  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'FAQ '),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Har du frågor? Vi har svar.',style: TextFontStyle.headline16000000Figtreew600.copyWith(fontSize: 24.sp)),
            UIHelper.verticalSpace(6.h),
            Text('Svar på de vanligaste freeborn som användare ställer oss – så att du får hjälp snabbare.',style: TextFontStyle.headline14c4B586BFigtreew400,),
            UIHelper.verticalSpace(24.h),
            Expanded(
              child: ListView.separated(
                itemCount: bestText.length,
                separatorBuilder: (_, __) => UIHelper.verticalSpace(12.h),
                itemBuilder: (context, index) {
                  bool isItemExpanded = expandedIndex == index;
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: AppColor.cF4F4F5,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.cF5F5F6,
                          blurRadius: 16.r,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                bestText[index],
                                style: TextFontStyle.headline16c170F49Figtreew500,
                              ),
                            ),
                            UIHelper.horizontalSpace(8.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (expandedIndex == index) {
                                    expandedIndex = null;
                                  } else {
                                    expandedIndex = index;
                                  }
                                });
                              },
                              child: Container(
                                height: 32.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                  color: isItemExpanded
                                      ? AppColor.c1C1C1F
                                      : AppColor.cE0E0E0,
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: SvgPicture.asset(
                                    isItemExpanded
                                        ? AppIcons.minesIcon
                                        : AppIcons.pluseIcon,
                                    color: isItemExpanded
                                        ? AppColor.cFFFFFF
                                        : AppColor.c1C1C1F,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (isItemExpanded) ...[
                          UIHelper.verticalSpace(12.h),
                          ...someText.map((text) => Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Text(
                              text,
                              style:
                              TextFontStyle.headline14c6F6C8FFigtreew400,
                            ),
                          )),
                        ],
                      ],
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
              text: 'Spara & Fortsätt',
              borderRadius: 100.r,
              onPressed: () {
                NavigationService.navigateTo(Routes.userMessageScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
