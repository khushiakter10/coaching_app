
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/assessment/auth/experience_prior_to_training/widget/custom_training_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ExperienceToPriorToTrainingScreen extends StatefulWidget {
  const ExperienceToPriorToTrainingScreen({super.key});

  @override
  State<ExperienceToPriorToTrainingScreen> createState() =>
      _ExperienceToPriorToTrainingScreenState();
}

class _ExperienceToPriorToTrainingScreenState
    extends State<ExperienceToPriorToTrainingScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,

        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '2 ta 12',
          

        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Text('Har du tidigare erfarenhet av träning?',style: TextFontStyle.headline30c192126Urbanistw600,  textAlign: TextAlign.center)),

            UIHelper.verticalSpace(48.h),

            CustomTrainingWidget(
              icons: [  SvgPicture.asset(AppIcons.jaIcon),SvgPicture.asset(AppIcons.nejIcon)],
              texts: ['Ja', 'Nej'],
              onSelectionChanged: (index) {
                setState(() {selectedIndex = index; });

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
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Fortsätt',
              borderRadius: 100.r,
              heightbutton: 56.h,
              onPressed: () {
                NavigationService.navigateTo(
                  Routes.trainingplanScreen,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
