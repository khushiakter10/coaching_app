import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_videos.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:coaching_app/provider/singelvideo_play_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../widgets/wellcomeuser_widget.dart';
import '../widgets/calendar_row_widget.dart';
import '../widgets/green_banner_widget.dart';
import '../widgets/todays_training_widget.dart';
import '../widgets/week_progress_widget.dart';
import '../widgets/video_card.dart';
import '../widgets/activity_item.dart';
import '../widgets/progress_stat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(25.h),

              WelcomeUserWidget(),

              UIHelper.verticalSpace(24.h),

              CalendarRowWidget(),
              UIHelper.verticalSpace(20.h),

              GreenBannerWidget(),
              UIHelper.verticalSpace(20.h),

              TodaysTrainingWidget(),
              UIHelper.verticalSpace(20.h),

              WeekProgressWidget(),

              // Progress Stats
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColor.cEFEFF0,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Din framsteg',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    UIHelper.verticalSpace(12),
                    ProgressStatWidget.time(
                        label: 'Träningstid', hours: 3, minutes: 35),
                    ProgressStatWidget.time(
                        label: 'Träningstid', hours: 3, minutes: 35),
                    ProgressStatWidget.calories(
                        label: 'Brända kalorier', value: 2450),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),

              // Rahat's hörna
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rahat's hörna",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      // Handle "Se mer" tap
                     
                      NavigationService.navigateTo(Routes.mealsPlansScreen);
                    },
                    child: Text("Se mer",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                  ),
                ],
              ),
              UIHelper.verticalSpace(8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle video card tap
                            context.read<SingelvideoPlayProvider>().initializeVideo_video(
                                AppVideos.videoCard1);
                                
                            NavigationService.navigateTo(Routes.videoplayWidget);
                          },
                          child: VideoCard(
                              title: 'Gående utfall',
                              duration: '1 min',
                              videoPath: AppVideos.videoCard1),
                        ),
                      ],
                    ),
                    UIHelper.horizontalSpace(12.w),
                    GestureDetector(
                      onTap: () {
                        // Handle video card tap
                        context.read<SingelvideoPlayProvider>().initializeVideo_video(
                            AppVideos.videoCard2);
                        NavigationService.navigateTo(Routes.videoplayWidget);
                      },
                      child: VideoCard(
                          title: 'Bänkpress',
                          duration: '1 min',
                          videoPath: AppVideos.videoCard2),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),

              // Recent Activities
              Card(
                color: AppColor.cF4F4F4,
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Senaste aktiviteten',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold)),
                      UIHelper.verticalSpace(8.h),
                      ActivityItem(
                        time: '6:30 AM',
                        title: 'Avslutat morgon cardio-pass',
                        svgPath: AppIcons.heartbeat,
                        color: AppColor.cCEE9FF,
                        duration: '20 minuter',
                        calories: '150 Kal',
                        description:
                            'Flexibilitets- och rörlighetspass fokuserat på djupa sträckor',
                      ),
                      ActivityItem(
                        time: '12:00 PM',
                        title: 'Avslutat styrketräningscirkel',
                        svgPath: AppIcons.personArmsSpread,
                        color: AppColor.cFFF080,
                        duration: '20 minuter',
                        calories: '150 Kal',
                        description:
                            'Flexibilitets- och rörlighetspass fokuserat på djupa sträckor',
                      ),
                      ActivityItem(
                        time: '2:00 PM',
                        title: 'Avslutat yoga-flöde',
                        svgPath: AppIcons.personSimpleTaiChi,
                        color: AppColor.cDAF17E,
                        duration: '20 minuter',
                        calories: '150 Kal',
                        description:
                            'Flexibilitets- och rörlighetspass fokuserat på djupa sträckor',
                      ),
                      ActivityItem(
                        time: '7:30 PM',
                        title: 'Avslutat core-styrketräning',
                        svgPath: AppIcons.barbell,
                        color: AppColor.cCEE9FF,
                        duration: '20 minuter',
                        calories: '150 Kal',
                        description:
                            'Flexibilitets- och rörlighetspass fokuserat på djupa sträckor',
                      ),
                      UIHelper.verticalSpace(32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
