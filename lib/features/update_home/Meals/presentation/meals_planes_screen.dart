import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/features/update_home/Meals/widgets/keep_watching_widget.dart';
import 'package:coaching_app/features/update_home/Meals/widgets/training_principal_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MealsPlansScreen extends StatelessWidget {
  const MealsPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar:  CustomAppBar(text: 'Rahat’s hörna'),
      body: SafeArea(
          child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            KeepWatchingWidget(),

            UIHelper.verticalSpace(24.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Träningsprinciper",
                style: TextStyle(
                  color: AppColor.c000000,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold)),
              Text("Se mer",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColor.c000000,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
              ],
            ),
            UIHelper.verticalSpace(16.h),

            SizedBox(
              height: 200.h,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemExtent: 200.w,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: GestureDetector(
                  onTap: () {
                    // Handle tap event
                    NavigationService.navigateTo(Routes.programsIntro);

                  },
                  child: TrainingPrincipalWidget(
                    title: "Träningsprinciper",
                    type: "Träningsprinciper",
                    sets: "10",
                    videoPath: "assets/videos/videoCard${index+1}.mp4",
                    index: index,
                  ),
                ),
                );
              },
              ),
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Näring & Energi",
                style: TextStyle(
                  color: AppColor.c000000,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold)),
              Text("Se mer",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColor.c000000,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
              ],
            ),
            UIHelper.verticalSpace(16.h),

            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
              itemCount: 11,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
              return TrainingPrincipalWidget(
                title: "Träningsprinciper",
                type: "Träningsprinciper",
                sets: "10",
                videoPath: "assets/videos/videoCard${index+1}.mp4",
                index: index,
              );
              },
            ),
            UIHelper.verticalSpace(16.h),
            ],
          ),
          ),
        ),
      );
   
  }
}
