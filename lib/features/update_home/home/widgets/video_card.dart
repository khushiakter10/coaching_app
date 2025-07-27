import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';


class VideoCard extends StatefulWidget {
  final String title;
  final String duration;
  final String videoPath;

  const VideoCard({
    required this.title,
    required this.duration,
    required this.videoPath,
    Key? key,
  }) : super(key: key);

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 256.w,
          height: 250.h,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            clipBehavior: Clip.antiAlias,
            child: VideoPlayer(_controller),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
          child: Text(
            widget.title,
            style: TextFontStyle.textStyle16c132234SatoshiW600,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
          child: Text(
            widget.duration,
            style: TextFontStyle.headline14c607080satoshiw400,
          ),
        ),
      ],
    );
  }
}
