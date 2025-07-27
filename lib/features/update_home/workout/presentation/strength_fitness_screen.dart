import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/features/update_home/workout/widgets/exercisecard_widgets.dart';
import 'package:coaching_app/features/update_home/workout/widgets/goalcard_widgets.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class StrengthFitnessScreen extends StatelessWidget {
  const StrengthFitnessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar:  CustomAppBar(text: 'Styrka & Kondition'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          GoalCard(),
          UIHelper.verticalSpace(16.h),

          ExerciseCard(
            image: 'assets/image/weightlifting.png',
            title: 'Bänkpress',
            sets: 3,
            reps: 12,
            onTechniqueTap: () {},
          ),
          UIHelper.verticalSpace(16.h),
          ExerciseCard(
            image: 'assets/image/weightlifting.png',
            title: 'Skivstångsroddar',
            sets: 3,
            reps: 12,
            onTechniqueTap: () {},
          ),
          UIHelper.verticalSpace(16.h),
          ExerciseCard(
            image: 'assets/image/weightlifting.png',
            title: 'Ab wheel rollout',
            sets: 3,
            reps: 12,
            onTechniqueTap: () {},
          ),
        ],
      ),
    );
  }
}
