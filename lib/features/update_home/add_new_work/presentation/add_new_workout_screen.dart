import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AddNewWorkoutScreen extends StatefulWidget {
  const AddNewWorkoutScreen({super.key});

  @override
  State<AddNewWorkoutScreen> createState() => _AddNewWorkoutScreenState();
}

class _AddNewWorkoutScreenState extends State<AddNewWorkoutScreen> {

  String selectedDay = 'O';
  String selectedTime = '08:00';

  final List<String> days = ['S', 'M', 'T', 'O', 'T', 'F', 'L'];

  final List<String> times = [
  '08:00',
  '10:00',
  '11:00',
  '12:00',
  '13:00',
  '14:00',
  '15:00',
  '16:00',
  '17:00',
  '18:00',
  '19:00',
  '20:00',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Lägg till ny träning'),

      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Träningsnamn',style: TextFontStyle.headline16000000Figtreew600),
            UIHelper.verticalSpace(8.h),

            CustomTextFormfield(
              hintText: 'Ange träningsnamn',
              hintStyle: TextFontStyle.headline16c393C43Figtreew600,
            ),
            UIHelper.verticalSpace(20.h),

            Text('Upprepningsdagar',style: TextFontStyle.headline16000000Figtreew600),

            UIHelper.verticalSpace(12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: days.map((day) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDay = day;
                    });
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedDay == day
                          ? AppColor.c01031A
                          : AppColor.cFFFFFF,
                      border: Border.all(color: AppColor.cE7E7E7, width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        day,
                        style: TextStyle(
                          color: selectedDay == day
                              ? AppColor.cFFFFFF
                              : AppColor.c01031A,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            UIHelper.verticalSpace(20.h),

            Text('Träningstid',  style: TextFontStyle.headline16000000Figtreew600),

            UIHelper.verticalSpace(8.h),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.9,
              ),
              itemCount: times.length,
              itemBuilder: (context, index) {
                final time = times[index];
                final isSelected = selectedTime == time;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTime = time;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColor.c192126 : AppColor.cF3F3F4,
                      borderRadius: BorderRadius.circular(10.r),
                      border: isSelected
                          ? Border.all(color: AppColor.cE3E4E5, width:2.w)
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        time,
                        style: isSelected
                            ? TextFontStyle.headline16FFFFFFFigtreew500.copyWith(fontSize: 14.sp)
                            : TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 14.sp),
                      ),
                    ),
                  ),
                );
              },
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
              text: 'Spara',
              borderRadius: 100.r,
              onPressed: () {
                NavigationService.navigateTo(Routes.creatOwnWorkOutTwoScreen);

              },
            ),
          ],
        ),
      ),
    );
  }
}
