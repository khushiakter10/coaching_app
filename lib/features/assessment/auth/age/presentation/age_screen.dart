import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {


  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];


  final List<int> years = List.generate(15, (index) => 2015 + index);

  int selectedMonthIndex = 9;
  int selectedYearIndex = 7;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 70.h,
        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '3 av 12',
        ),
      ),
      body:

      SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 50.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text( "Vad är din ålder?", style: TextFontStyle.headline30c192126Urbanistw600),

            UIHelper.verticalSpace(20.h),


            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 205.h,
                  left: 10.w,
                  child: Container(
                    width: 342.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color:AppColor.cE3E4E5,
                      borderRadius: BorderRadius.circular(111),

                    ),
                  ),
                ),
                SizedBox(
                  height: 450.h,
                  child: Center(
                    child: SizedBox(
                      width: 280.w,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListWheelScrollView.useDelegate(
                              itemExtent: 40,
                              diameterRatio: 1.5,
                              physics: FixedExtentScrollPhysics(),
                              onSelectedItemChanged: (index) {
                                setState(() {
                                  selectedMonthIndex = index;
                                });
                              },
                              childDelegate: ListWheelChildBuilderDelegate(
                                builder: (context, index) {
                                  final isSelected = index == selectedMonthIndex;
                                  return Center(
                                    child: Text(
                                      months[index],
                                      textAlign: TextAlign.center,
                                      style: isSelected
                                          ? TextFontStyle
                                          .headline32c252C32Figtreew500
                                          : TextFontStyle
                                          .headline20c6B7280Figtreew400,
                                    ),
                                  );
                                },
                                childCount: months.length,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListWheelScrollView.useDelegate(
                              itemExtent: 40,
                              diameterRatio: 1.5,
                              physics: FixedExtentScrollPhysics(),
                              onSelectedItemChanged: (index) {
                                setState(() {
                                  selectedYearIndex = index;
                                });
                              },
                              childDelegate: ListWheelChildBuilderDelegate(
                                builder: (context, index) {
                                  final isSelected = index == selectedYearIndex;
                                  return Center(
                                    child: Text(
                                      "${years[index]}",
                                      textAlign: TextAlign.center,

                                      style: isSelected
                                          ? TextFontStyle
                                          .headline32c252C32Figtreew500
                                          : TextFontStyle
                                          .headline20c6B7280Figtreew400,
                                    ),
                                  );
                                },
                                childCount: years.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),


      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h,right: 23,left: 23),
        child: CustomButtonWidget(
          textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          text: 'Fortsätt',
          borderRadius: 100.r,
          heightbutton: 56.h,
          onPressed: () {
            NavigationService.navigateTo(Routes.kgScreen);
          },
        ),
      ),
    );
  }
}


