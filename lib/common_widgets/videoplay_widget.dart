import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:coaching_app/provider/singelvideo_play_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:video_player/video_player.dart';

// Custom thumb shape for Slider with border
class BorderThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final double borderWidth;
  final Color borderColor;

  const BorderThumbShape({
    this.thumbRadius = 12.0,
    this.borderWidth = 2.0,
    this.borderColor = Colors.black,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Paint fillPaint = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.white
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, thumbRadius, fillPaint);
    canvas.drawCircle(center, thumbRadius, borderPaint);
  }
}

class VideoplayWidget extends StatelessWidget {
  const VideoplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<SingelvideoPlayProvider>().initializeVideo_video(
    //       'assets/videos/videoCard2.mp4',
    //     );
    return Material(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300]!,
        ),
        child: Consumer<SingelvideoPlayProvider>(
          builder: (context, videoProvider, child) {
            // return VideoPlayer(videoProvider.videoPlayerController);
            if (videoProvider.videoPlayerController.value.isInitialized) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      videoProvider.togglePlayPause();
                    },
                    child: SizedBox.expand(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width: videoProvider
                              .videoPlayerController.value.size.width,
                          height: videoProvider
                              .videoPlayerController.value.size.height,
                          child:
                              VideoPlayer(videoProvider.videoPlayerController),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 80.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              NavigationService.goBack();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9.h, horizontal: 11.w),
                              decoration: BoxDecoration(
                                color: AppColor.cF3F3F4,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: SvgPicture.asset(AppIcons.arrwright,
                                  height: 24.h),
                            ),
                          ),
                          Text(
                            'Ryggträning',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.cFFFFFF,
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 50,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 24.h, horizontal: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                ValueListenableBuilder<VideoPlayerValue>(
                                valueListenable: videoProvider.videoPlayerController,
                                builder: (context, value, child) {
                                  return Text(
                                  value.position.inSeconds > 0
                                    ? '${value.position.inMinutes}:${(value.position.inSeconds % 60).toString().padLeft(2, '0')}'
                                    : '00:00',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.cFFFFFF,
                                  ),
                                  );
                                },
                                ),
                              UIHelper.horizontalSpace(8.w),
                              Text(
                                videoProvider.videoPlayerController.value
                                            .duration.inSeconds >
                                        0
                                    ? '${videoProvider.videoPlayerController.value.duration.inMinutes}:${(videoProvider.videoPlayerController.value.duration.inSeconds % 60).toString().padLeft(2, '0')}'
                                    : '00:00',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.cFFFFFF,
                                ),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(8.h),
                          ValueListenableBuilder<VideoPlayerValue>(
                            valueListenable:
                                videoProvider.videoPlayerController,
                            builder: (context, value, child) {
                              final duration = value.duration.inMilliseconds;
                              final position = value.position.inMilliseconds;
                              return SliderTheme(
                                data: SliderThemeData(
                                  thumbShape: BorderThumbShape(
                                    thumbRadius: 10.0.r,
                                    borderWidth: 4.0.w,
                                    borderColor:
                                        AppColor.cFFFFFF, // Your border color
                                  ),
                                  thumbColor: Colors.white, // Inner thumb color
                                  activeTrackColor: Colors.blue,
                                  inactiveTrackColor:
                                      const Color.fromARGB(0, 158, 158, 158),
                                  trackHeight: 10.h,

                                  trackShape: RoundedRectSliderTrackShape(),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 20.0),
                                ),
                                child: Slider(
                                  thumbColor: AppColor.c1B1B1D,
                                  min: 0.0,
                                  max: duration > 0 ? duration.toDouble() : 1.0,
                                  value: position.clamp(0, duration).toDouble(),
                                  onChanged: (newValue) {
                                    videoProvider.videoPlayerController.seekTo(
                                      Duration(milliseconds: newValue.toInt()),
                                    );
                                  },
                                  activeColor: AppColor.cFFFFFF,
                                  inactiveColor: Colors.grey,
                                  // Set the track height (thickness)
                                  // This property is available via SliderThemeData, not directly on Slider.
                                ),
                              );
                            },
                          ),
                          UIHelper.verticalSpace(8.h),
                          SizedBox(
                            width: 256.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Föregående',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.cFFFFFF,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.c000E08,
                                    radius: 20.r,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AppColor.cFFFFFF, // Border color
                                          width: 5.0.r, // Border width
                                        ),
                                      ),
                                      child: ValueListenableBuilder<VideoPlayerValue>(
                                        valueListenable: videoProvider.videoPlayerController,
                                        builder: (context, value, child) {
                                          final isPlaying = value.isPlaying;
                                          return IconButton(
                                            icon: Icon(
                                              isPlaying ? Icons.pause : Icons.play_arrow,
                                              color: AppColor.cFFFFFF,
                                            ),
                                            onPressed: () {
                                              videoProvider.togglePlayPause();
                                            },
                                            iconSize: 24.r,
                                            padding: EdgeInsets.zero,
                                            alignment: Alignment.center,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Nästa',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.cFFFFFF,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
