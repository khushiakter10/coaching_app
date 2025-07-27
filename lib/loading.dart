// import 'package:coaching_app/splash_screen.dart';
// import 'package:flutter/material.dart';
//
//
// import 'helpers/helper_methods.dart';
//
// final class Loading extends StatefulWidget {
//   const Loading({super.key});
//
//   @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//   bool _isLoading = true;
//
//   @override
//   void initState() {
//     loadInitialData();
//     super.initState();
//   }
//
//   loadInitialData() async {
//     _isLoading = true;
//     //AutoAppUpdateUtil.instance.checkAppUpdate();
//     await setInitValue();
//
//     setState(() {
//       _isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return const SplashScreen();
//     } else {
//       return WelcomeScree();
//       //return DrawerScreen();
//     }
//   }
// }
