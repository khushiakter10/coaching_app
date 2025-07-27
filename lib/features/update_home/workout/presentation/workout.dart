import 'package:coaching_app/assets_helper/app_videos.dart';
import 'package:coaching_app/features/update_home/workout/widgets/catatagory_widget.dart';
import 'package:coaching_app/features/update_home/workout/widgets/personal_training_widget.dart';
import 'package:coaching_app/features/update_home/workout/widgets/todaystraining_widget.dart';
import 'package:coaching_app/features/update_home/workout/widgets/videocard.dart';
import 'package:coaching_app/features/update_home/workout/widgets/wellcomeuser_workout_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:coaching_app/provider/catagori.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';




class WorkoutScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'label': 'För Dig',
    },
    {
      'label': 'Börja Starkt',
    },
    {
      'label': 'Fyra för Framsteg',
    },
    {
      'label': 'Mitt Styrketräningsschema',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(25.h),

              WelcomeUserWorkoutWidget(),

              UIHelper.verticalSpace(24.h),
              SizedBox(
                height: 40.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final selectedCategoryIndex =
                        context.watch<CatagoriProvider>().selectedCategoryIndex;
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<CatagoriProvider>()
                              .setSelectedCategory(index);
                        },
                        child: CatagoryWidget(
                          label: category['label'],

                          isSelected: index == selectedCategoryIndex
                              ? true
                              : false, // First item selected by default
                          isDisabled: false,
                        ),
                      ),
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return WorkoutVideoCard(
                        title: 'Styrkefundament',
                        videoPath: AppVideos.videoCard1,
                        type: 'Nybörjare',
                        sets: '5x per vecka',
                        index: index,
                      );
                    },
                  ),
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Text('Dagens Träning',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              UIHelper.verticalSpace(12.h),

              GestureDetector(onTap: (){NavigationService.navigateTo(Routes.strengthFitnessScreen);},
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TodayTrainingWidget(
                          title: 'Styrka & Kondition',
                          progress: 72,
                        );
                      },
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Personlig Träning",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  Text("Se mer",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
              PersonalTrainingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
