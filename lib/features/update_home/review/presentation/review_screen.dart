import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/review/widget/custom_subscription.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.cFFFFFF,
        appBar:  CustomAppBar(text: 'Lägg till ny träning'),
      body: SingleChildScrollView( padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hur kändes passet?',style: TextFontStyle.headline30c192126Urbanistw600),
            //////////////////////////////////  Prenumeration   ////////////////////////////////////////////
            UIHelper.verticalSpace(20.h),
            CustomSubscription(text: 'Prenumeration'),
            UIHelper.verticalSpace(20.h),
           //////////////////////////////////  Done   ////////////////////////////////////////////

            Text('Något du vill notera?',style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),

             UIHelper.verticalSpace(8.h),

            Container(
          padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColor.cF4F4F5,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(11.0.sp),
                child: Text( 'Skriv här....sectetur. Magna sollicitudin eu tristique tellus ut lacus lectus ultrices. Diam tincidunt suspendisse volutpat arcu nec arcu neque. Eu porta nisl viverra aliquam. Faucibus sed ac eget lectus sed nullam lorem ac nulla.',style: TextFontStyle.headline14c949494Nunitow400),
              ),
              UIHelper.verticalSpace(20.h)

            ],
          ),
        ),
          ],
        ),
      ),

        bottomNavigationBar:
        Padding(padding: EdgeInsets.only(left: 23.w, right: 23.w, bottom: 25.h),
          child: CustomButtonWidget(
            borderRadius: 100.r,
            heightbutton: 56.h,
            text: 'Spara och stäng',
            color: AppColor.c000000,
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          ),
        )
    );
  }
}


