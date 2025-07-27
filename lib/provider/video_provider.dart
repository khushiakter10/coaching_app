import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier {
  final Map<int, VideoPlayerController> _controllers = {};
  final Map<int, VideoPlayerController> _controllers_Training_principles = {};
  late VideoPlayerController _controller_meals;
  final Map<int, bool> _initializedStates = {};

  int? _currentPlayingIndex;

  VideoPlayerController? getController(int index) => _controllers[index];

  VideoPlayerController? getController_meals() => _controller_meals;

  bool isInitialized(int index) => _initializedStates[index] ?? false;

  int? get currentPlayingIndex => _currentPlayingIndex;

  Future<void> initializeVideo(String videoPath, int index) async {
    // Dispose existing controller for this index if it exists
    if (_controllers[index] != null) {
      await _controllers[index]!.dispose();
    }

    _controllers[index] = VideoPlayerController.asset(videoPath);
    try {
      await _controllers[index]!.initialize();
      _initializedStates[index] = true;
      notifyListeners();
    } catch (e) {
      _initializedStates[index] = false;
      notifyListeners();
    }
  }

  Future<void> initializeVideo_Training_principles(
      String videoPath, int index) async {
    _controllers_Training_principles[index] =
        VideoPlayerController.asset(videoPath);
    try {
      await _controllers_Training_principles[index]!.initialize();
      //_initializedStates_Training_principles[index] = true;
      notifyListeners();
    } catch (e) {
      // _initializedStates_Training_principles[index] = false;
      notifyListeners();
    }
  }

  Future<void> initializeVideo_meals(String videoPath) async {
    _controller_meals = VideoPlayerController.asset(videoPath);
    try {
      await _controller_meals.initialize();
    } catch (e) {
      print('Error initializing meals video : $e');
    }
  }

  void playVideo(int index) {
    // Pause current video if any
    if (_currentPlayingIndex != null &&
        _controllers[_currentPlayingIndex] != null) {
      _controllers[_currentPlayingIndex]!.pause();
    }

    // Play new video
    if (_controllers[index] != null && _initializedStates[index] == true) {
      _controllers[index]!.play();
      _currentPlayingIndex = index;
      notifyListeners();
    }
  }

  void pauseVideo(int index) {
    if (_controllers[index] != null && _initializedStates[index] == true) {
      _controllers[index]!.pause();
      if (_currentPlayingIndex == index) {
        _currentPlayingIndex = null;
      }
      notifyListeners();
    }
  }

  bool isPlaying(int index) {
    return _currentPlayingIndex == index &&
        _controllers[index]?.value.isPlaying == true;
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    _initializedStates.clear();
    _controller_meals.dispose();

    super.dispose();
  }
}
