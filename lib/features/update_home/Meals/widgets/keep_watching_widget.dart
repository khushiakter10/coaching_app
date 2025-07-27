import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/provider/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class KeepWatchingWidget extends StatelessWidget {
  const KeepWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<VideoProvider>().initializeVideo_meals(
          'assets/videos/videoCard2.mp4',
        );
    return SizedBox(
      height: 112.h,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        color: AppColor.cFFFFFF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
          side: BorderSide(color: AppColor.cE0E1E3),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.h),
              child: Flexible(

              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fortsätt titta',
                      style:
                          TextFontStyle.headline13c132234Satoshiw700.copyWith(
                        color: AppColor.c898989,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Hur kalorier verkligen fungerar',
                      style:
                          TextFontStyle.headline13c132234Satoshiw700.copyWith(
                        color: AppColor.c000000,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.c000000,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: FittedBox(
                        child: Text(
                          'Fortsätt träna',
                          style: TextFontStyle.headline13c132234Satoshiw700
                              .copyWith(
                            color: AppColor.cFFFFFF,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(95.r),
                  bottomLeft: Radius.circular(95.r),
                ),
                child: Consumer<VideoProvider>(
                  builder: (context, videoProvider, child) {
                    return VideoPlayer(videoProvider.getController_meals()!);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
