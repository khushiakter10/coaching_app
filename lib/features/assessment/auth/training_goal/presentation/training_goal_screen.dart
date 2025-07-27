import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TrainingGoalScreen extends StatefulWidget {
  const TrainingGoalScreen({super.key});

  @override
  State<TrainingGoalScreen> createState() =>
      _TrainingGoalScreenState();
}

class _TrainingGoalScreenState
    extends State<TrainingGoalScreen> {
  int? selectedIndex;

  final List<String> goals = [
    'Öka kardiovaskulär uthållighet',
    'Bygga muskler och styrka',
    'Träna för ett specifikt evenemang eller tävling',
    'Öka mental välbefinnande och minska stress',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,

        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        scrolledUnderElevation: 0,
        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '1 av 12',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text( 'Vad är ditt träningsmål?',style: TextFontStyle.headline30c192126Urbanistw600),
            ),
            UIHelper.verticalSpace(48.h),
            ...List.generate(goals.length, (index) {
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColor.c192126 : AppColor.cF3F3F4,
                    borderRadius: BorderRadius.circular(19.r),
                    border: Border.all(
                      color: isSelected ? AppColor.cE3E4E5: Colors.transparent,
                      width: 2.w,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          goals[index],

                          style: isSelected
                              ? TextFontStyle.headline16FFFFFFFigtreew500
                              : TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 16.sp),


                        ),
                      ),
                      Checkbox(
                        value: isSelected,
                        onChanged: (_) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        activeColor: AppColor.cFFFFFF,
                        checkColor:AppColor.c192126
                      ),
                    ],
                  ),
                ),
              );
            }),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h,right: 23,left: 23),
        child: CustomButtonWidget(
          onPressed: (){NavigationService.navigateTo(Routes.genderScreen);},
          textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          text: 'Fortsätt',
          borderRadius: 100.r,
          heightbutton: 56.h,
        ),
      ),


    );
  }
}
