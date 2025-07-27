import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/my_meals/widget/custom_lunch.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:coaching_app/provider/catagori.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class MyMealsScreen extends StatelessWidget {
  MyMealsScreen({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'label': 'Frukost'},
    {'label': 'Lunch'},
    {'label': 'Mellanmål'},
    {'label': 'Middag'},
    {'label': 'Drycker'},
  ];

  final List<String> banatext = [
    'Övernattningsgröt med mandelsmör och banan',
    'Grillad kyckling och grönsaksspett',
    'Grillad kyckling och grönsaksspett',
    'Grillad buckling och khusiakter'
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<CatagoriProvider>().selectedCategoryIndex;

    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Mina måltider'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 12.h),
        child: Column(
          children: [

            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Padding(
                    padding:  EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<CatagoriProvider>().setSelectedCategory(index);
                      },
                      child: CategoryWidget(
                        borderRadius: BorderRadius.circular(100.r),
                        label: category['label'],
                        isSelected: index == selectedIndex,
                        isDisabled: false,
                      ),
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              height: 590.h,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: AppColor.cFFFCFB,
                      borderRadius: BorderRadius.circular(18.r),
                      border: Border.all(color: AppColor.cE0E1E3, width: 2.w),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.piza,
                              height: 82.h,
                              fit: BoxFit.cover,
                            ),
                            UIHelper.horizontalSpace(16.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    banatext[index],
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextFontStyle.headline16c212738Figtreew500,
                                  ),
                                  UIHelper.verticalSpace(16.h),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                        decoration: BoxDecoration(
                                          color: AppColor.cE4F3FF,
                                          borderRadius: BorderRadius.circular(8.r),
                                        ),
                                        child: Text('Frukost', style: TextFontStyle.headline12c545454Figtreew500),
                                      ),
                                      UIHelper.horizontalSpace(8.w),
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
                                        decoration: BoxDecoration(
                                          color: AppColor.cEFEFF0,
                                          borderRadius: BorderRadius.circular(8.r),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(AppIcons.chartk, height: 14.h),
                                            UIHelper.horizontalSpace(8.w),
                                            Text('Medium', style: TextFontStyle.headline12c545454Figtreew500),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(16.h),
                        Divider(color: AppColor.cE0E1E3, thickness: 1),
                        UIHelper.verticalSpace(16.h),
                        Row(
                          children: [
                            Text('400 Kal', style: TextFontStyle.headline12c545454Figtreew400),
                            UIHelper.horizontalSpace(8.w),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                              decoration: BoxDecoration(
                                color: AppColor.cBCBEC3,
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                            ),
                            UIHelper.horizontalSpace(8.w),
                            Text('50 g kolhydrater', style: TextFontStyle.headline12c545454Figtreew400),
                            UIHelper.horizontalSpace(8.w),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                              decoration: BoxDecoration(
                                color: AppColor.cBCBEC3,
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                            ),
                            UIHelper.horizontalSpace(8.w),
                            Text('12 g protein', style: TextFontStyle.headline12c545454Figtreew400),
                            UIHelper.horizontalSpace(8.w),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                              decoration: BoxDecoration(
                                color: AppColor.cBCBEC3,
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                            ),
                            UIHelper.horizontalSpace(8.w),
                            Text('16 g fetter', style: TextFontStyle.headline12c545454Figtreew400),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return UIHelper.verticalSpace(16.h);
                },
                itemCount: banatext.length,
              ),
            )
          ],
        ),
      ),

        bottomNavigationBar:
        Padding(padding: EdgeInsets.only(left: 23.w, right: 23.w, bottom: 25.h),
          child: CustomButtonWidget(
            borderRadius: 100.r,
            heightbutton: 56.h,
            text: 'Lägg till ny måltid',
            color: AppColor.c000000,
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
            onPressed: (){NavigationService.navigateTo(Routes.creatOwnMealScreen);},
          ),
        )
    );
  }
}
