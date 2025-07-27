import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GoalCard extends StatelessWidget {
  const GoalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.cE9E9E9,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             SvgPicture.asset(
                AppIcons.heartbeat,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 8),
              const Text(
                'Träningsmål',
                style: TextStyle(
                  color: Color(0xFFB0B0B0),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  
                    CircularProgressIndicator(
                   semanticsLabel: 'Progress',
                    semanticsValue: '75%',
                    
                    value: 0.75,
                    strokeWidth: 10,
                    backgroundColor: AppColor.cFFFFFF,
                    strokeCap: StrokeCap.round,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColor.c32D545 ),
                    ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          '75%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '14/20 genomförda',
                          style: TextStyle(
                            color: Color(0xFFB0B0B0),
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              '2 av 5 övningar genomförda',
              style: TextStyle(
                color: Color(0xFFB0B0B0),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
