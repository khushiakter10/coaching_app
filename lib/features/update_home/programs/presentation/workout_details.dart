import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../provider/singelvideo_play_provider.dart';
import '../widgets/training_card_widget.dart';

class WorkoutDetails extends StatelessWidget {
  const WorkoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.programsWorkoutDetailsBoy),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            UIHelper.verticalSpaceExtraLarge,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationService.goBack();
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                      decoration: BoxDecoration(
                        color: AppColor.cF3F3F4,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: SvgPicture.asset(AppIcons.arrwright, height: 24.h),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ryggträning",
                    textAlign: TextAlign.center,
                    style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                      color: AppColor.cFFFFFF,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(57.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.cFFFFFF,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Förbered dig på att transformera dina bröstmuskler med vårt riktade och aktiva bröstträningsprogram anpassat för dig",
                        textAlign: TextAlign.center,
                        style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
                          color: AppColor.c000000,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(32.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoColumn(
                            icon: AppIcons.clockfill,
                            value: "58min",
                            label: "tid",
                          ),
                          _verticalDivider(),
                          _buildInfoColumn(
                            icon: AppIcons.fireicon,
                            value: "240Kcal",
                            label: "Kalorier",
                          ),
                          _verticalDivider(),
                          _buildInfoColumn(
                            icon: AppIcons.weight,
                            value: "3x4",
                            label: "Set",
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpace(16.h),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return TrainingCardWidget(
                            imagepath: AppImages.weightlifting,
                            title: "Biceps Curl",
                            set: "3",
                            Reps: "10",
                            ontaps: () {
                              context
                                  .read<SingelvideoPlayProvider>()
                                  .initializeVideo_video(
                                  'assets/videos/videoCard2.mp4');
                              NavigationService.navigateTo(
                                  Routes.videoplayWidget);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn({
    required String icon,
    required String value,
    required String label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon, height: 24.h),
        Text(
          value,
          style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
            color: AppColor.c000000,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          label,
          style: TextFontStyle.headline14c676C75Figtreew500.copyWith(
            color: AppColor.c7C7C7C,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _verticalDivider() {
    return SizedBox(
      height: 50.h,
      child: VerticalDivider(
        color: AppColor.cD9D9D9,
        thickness: 1,
      ),
    );
  }
}
