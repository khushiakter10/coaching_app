import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MealvideoProvider extends ChangeNotifier{
final Map<int, VideoPlayerController> _controllers = {};

Future<void> initializeVideo(String videoPath,int index)async{
  _controllers[index] = VideoPlayerController.asset(videoPath);
  try{
    await _controllers[index]!.initialize();
    notifyListeners();
  }catch(e){
    print('Error initializing video: $e');
  }
 

}



}