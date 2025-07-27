import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/features/update_home/meal/widget/banan_widget.dart';
import 'package:coaching_app/features/update_home/meal/widget/custom_calorintag_widget.dart';
import 'package:coaching_app/features/update_home/meal/widget/meals_appbar_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MealsAppbarWidget(
          text: 'Måltider',
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(onTap: (){NavigationService.navigateTo(Routes.categoriseMealScreen);},
                child: CustomCalorintagWidget(caloriText: 'Dagligt kaloriintag', kolhydraterText: 'Kolhydrater')),

            UIHelper.verticalSpace(16.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min måltid',style: TextFontStyle.headline16c212738Figtreew500),
                GestureDetector(onTap: (){NavigationService.navigateTo(Routes.myMealsScreen);},

                  child: Text('Se mer',style: TextFontStyle.headline15c535252Figtreew500.copyWith( decoration: TextDecoration.underline,
                      decorationColor: AppColor.c535252,
                      decorationThickness: 1,height: 1.8))),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            BanaWidget(title: 'Övernattningsgröt med mandelsmör och banan',),
          ],
        ),
      ),
    );
  }
}


