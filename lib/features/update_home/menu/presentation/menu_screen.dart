import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/features/update_home/menu/widget/custom_Subscription_widget.dart';
import 'package:coaching_app/features/update_home/menu/widget/custom_account_widget.dart';
import 'package:coaching_app/features/update_home/menu/widget/custom_announcements_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Meny'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(

          children: [
            CustomAccountWidget(title: 'Konto', subtitle: 'Wyatt Doe'),

            UIHelper.verticalSpace(12.h),
            CustomSubscriptionWidget(subscripText: 'Prenumeration', subscrip: 'Aktiv — 99,00 kr/månad'),
            UIHelper.verticalSpace(12.h),

            SingleSwitchSelectorWidget(
              title: 'Prenumeration',
              options: [
                'Allmän Meddelande',
                'Träningspåminnelse',
                'Tillkännagivanden',
                'Videoförslag',
              ]),
            UIHelper.verticalSpace(12.h),


        Container(
          padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColor.cF4F4F5,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Support',style: TextFontStyle.headline16000000Figtreew600),

              UIHelper.verticalSpace(21.h),

              GestureDetector(
                onTap: (){
                  NavigationService.navigateTo(Routes.userMessageScreen);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Kontakta Support',style: TextFontStyle.headline14373535Figtreew500),
                    SvgPicture.asset(AppIcons.leftIcon, height: 24.h)
                  ],
                ),
              ),
              UIHelper.verticalSpace(7.h),
              Divider(color: AppColor.cE0E0E1, height: 1.h),
              UIHelper.verticalSpace(7.h),

              GestureDetector(
                onTap: (){NavigationService.navigateTo(Routes.qustionScreen);},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Vanliga Frågor',style: TextFontStyle.headline14373535Figtreew500),
                    SvgPicture.asset(AppIcons.leftIcon, height: 24.h)
                  ],
                ),
              ),

            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}




