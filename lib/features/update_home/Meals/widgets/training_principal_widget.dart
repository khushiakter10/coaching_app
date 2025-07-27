import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/provider/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class TrainingPrincipalWidget extends StatelessWidget {
  final String title;
  final String type;
  final String sets;
  final String videoPath;
  final int index;

  const TrainingPrincipalWidget({
    super.key,
    required this.title,
    required this.type,
    required this.sets,
    required this.videoPath,
    required this.index,
  });
  String formatDuration(Duration? duration) {
    if (duration == null) return "00:00:00";

    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return "$hours:$minutes:$seconds";
  }

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
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 6.h,
        ),
        child: Column(
          children: [
            Flexible(
              child: Card(
                elevation: 0,
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Consumer<VideoProvider>(
                  builder: (context, videoProvider, child) {
                    if (videoProvider.isInitialized(index) &&
                        videoProvider.getController(index) != null) {
                      return Stack(
                        children: [
                          SizedBox(
                            child: VideoPlayer(
                                videoProvider.getController(index)!),
                          ),
                          if (videoProvider.isPlaying(index))
                            Positioned(
                              right: 8,
                              top: 8,
                              child: IconButton(
                                icon: const Icon(Icons.pause,
                                    color: Colors.white),
                                onPressed: () =>
                                    videoProvider.pauseVideo(index),
                              ),
                            )
                          else
                            Positioned(
                              right: 8,
                              bottom: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color:
                                      AppColor.cBEBEBE.withValues(alpha: 0.59),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "${formatDuration(videoProvider.getController(index)?.value.duration)}",
                                  style: TextStyle(color: AppColor.cF0F5FA),
                                ),
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
            ),
            Row(
              children: [
                Expanded(
                  child: Text("Hur man tänker på progression",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.c000000)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text('De viktigaste sakerna för träningsresultat',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.c878A94)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
