import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SingelvideoPlayProvider extends ChangeNotifier {
  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;
  String _videoPath = '';
  String get videoPath => _videoPath;
  late VideoPlayerController _videoPlayerController;
  VideoPlayerController get videoPlayerController => _videoPlayerController;

  void togglePlayPause() {
    if (_videoPlayerController.value.isPlaying) {
      _videoPlayerController.pause();
    } else {
      _videoPlayerController.play();
    }
    _isPlaying = !_isPlaying;
    notifyListeners();
  }

  void setPlaying(bool value) {
    if (value) {
      _videoPlayerController.play();
    } else {
      _videoPlayerController.pause();
    }
    _isPlaying = value;
    notifyListeners();
  }
  initializeVideo_video(String videoPath) async {
    _videoPath = videoPath;
    _videoPlayerController = VideoPlayerController.asset(videoPath);
    try {
      await _videoPlayerController.initialize();
      notifyListeners();
    } catch (e) {
      print('Error initializing video: $e');
    }

  }

}
