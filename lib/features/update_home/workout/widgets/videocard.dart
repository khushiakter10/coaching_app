import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/provider/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class WorkoutVideoCard extends StatelessWidget {
  final String title;
  final String type;
  final String sets;
  final String videoPath;
  final int index;

  const WorkoutVideoCard({
    super.key,
    required this.title,
    required this.type,
    required this.sets,
    required this.videoPath,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize video when widget is built
    context.read<VideoProvider>().initializeVideo(videoPath, index);

    return Card(
      color: AppColor.cFFFCFB,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide(color: AppColor.cCDCDCD),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          children: [
            Card(
              elevation: 0,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Consumer<VideoProvider>(
                builder: (context, videoProvider, child) {
                  if (videoProvider.getController(index) != null) {
                    return Stack(
                      children: [
                        SizedBox(
                          height: 140.h,
                          child:
                              VideoPlayer(videoProvider.getController(index)!),
                        ),
                        if (videoProvider.isPlaying(index))
                          Positioned(
                            right: 8,
                            top: 8,
                            child: IconButton(
                              icon:
                                  const Icon(Icons.pause, color: Colors.white),
                              onPressed: () => videoProvider.pauseVideo(index),
                            ),
                          )
                        else
                          Positioned(
                            right: 8,
                            top: 8,
                            child: IconButton(
                              icon: const Icon(Icons.play_arrow,
                                  color: Colors.white),
                              onPressed: () => videoProvider.playVideo(index),
                            ),
                          ),
                      ],
                    );
                  } else {
                    return SizedBox(
                      width: 350.w,
                      height: 143.h,
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.c000000)),
                Chip(
                  visualDensity: VisualDensity(
                    vertical: -4.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  label: Text(type),
                  backgroundColor: AppColor.cCDCDCD,
                  labelStyle: TextStyle(color: AppColor.c4D5260),
                )
              ],
            ),
            // UIHelper.verticalSpace(5.h),
            Row(
              children: [
                Text(sets),
              ],
            )
          ],
        ),
      ),
    );
  }
}
