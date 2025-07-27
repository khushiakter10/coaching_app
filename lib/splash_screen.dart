import 'package:flutter/material.dart';

import 'assets_helper/app_colors.dart';
import 'assets_helper/app_images.dart';

//import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.c010B21,
        body: Center(
          child: Image.asset(AppImages.logo),
        ));
  }
}
