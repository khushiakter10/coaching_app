
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/manage_subcription/widget/billed-monthly_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



class ManageSubcriptionScreen extends StatefulWidget {
  const ManageSubcriptionScreen({super.key});

  @override
  State<ManageSubcriptionScreen> createState() =>
      _ManageSubcriptionScreenState();
}

class _ManageSubcriptionScreenState extends State<ManageSubcriptionScreen> {
  int selectedIndex = 0;
  bool isFirstSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.c151414,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        toolbarHeight: 80.h,
        backgroundColor: AppColor.c0071FF,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppIcons.cross),
            Text('Återställ', style: TextFontStyle.headline16cFFFFFFFigtreew600),

          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.c0071FF, AppColor.c151414],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text('Appnamn',style: TextFontStyle.headline16FFFFFFFigtreew500 .copyWith(fontSize: 36.sp)),
                    UIHelper.verticalSpace(6.h),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 57),
                      child: Text( 'Lås upp de mest användbara hälsa & fitness träningarna',style: TextFontStyle.headline16FFFFFFFigtreew500,  textAlign: TextAlign.center)),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {NavigationService.navigateTo(Routes.howYouTrialWorksScreen);},

                child: Column(
                  children: [
                    FeatureItem(text: 'Över 300 Copilot-användningar per dag'),
                    FeatureItem(text: 'Lås upp GPT-4 & Claude 2'),
                    FeatureItem(text: 'Proffssupport från vårt team'),
                    FeatureItem(text: 'Tidigt tillgång till nya funktioner'),
                  ],
                ),
              ),
              Spacer(),

              BilledMonthlyWidget(
                isFirstSelected: isFirstSelected,
                saveLabel: "Save \$40.00",
                onChanged: (selected) {
                  setState(() {
                    isFirstSelected = selected;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
        child: CustomButtonWidget(
          heightbutton: 56.h,
          text: 'Fortsätt',
          color: AppColor.cFFFFFF,
          borderRadius: 100.r,
          textStyle: TextFontStyle.headline16000000Figtreew600,
          onPressed: (){NavigationService.navigateTo(Routes.howYouTrialWorksScreen);},
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;
  const FeatureItem({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.signutre, height: 24.h),
          UIHelper.horizontalSpace(12.w),
          Expanded(
            child: Text(
              text,
              style: TextFontStyle.headline16cFFFFFFFigtreew600,
            ),
          ),
        ],
      ),
    );
  }
}
