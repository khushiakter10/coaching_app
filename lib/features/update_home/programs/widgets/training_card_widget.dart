
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TrainingCardWidget extends StatelessWidget {
  final String title;
  final String set;
  final String Reps;
  final String imagepath;
  final VoidCallback ontaps;

  const TrainingCardWidget({
    Key? key,
    required this.title,  
    required this.set,
    required this.Reps,
    required this.imagepath,
    required this.ontaps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontaps,
      child: Card(
        elevation: 0, 
        color:  AppColor.cF3F3F4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imagepath,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
              UIHelper.horizontalSpace(12 .w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset( AppIcons.seticon, height: 16.h),
                      UIHelper.horizontalSpace(4.h),
                      Text(
                        '$set Sets',
                      style: TextStyle(
                          fontSize: 14,
                          color:  Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(4.h),
                  Row(
                    children: [
                      SvgPicture.asset( AppIcons.repsicon, height: 16.h),
               UIHelper.horizontalSpace(4.h),
                      Text(
                        '${Reps}x Reps',
                        style: TextStyle(
                          fontSize: 14,
                          color:  Colors.black54,
                        ),  
                       
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
            Icon(Icons.arrow_forward_ios, color: AppColor.blackColor, size: 24.h),
            ],
          ),
        ),
      ),
    );
  }

}