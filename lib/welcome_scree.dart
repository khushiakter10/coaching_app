// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import 'assets_helper/app_colors.dart';
// import 'assets_helper/app_fonts.dart';
// import 'assets_helper/app_icons.dart';
// import 'assets_helper/app_images.dart';
// import 'helpers/all_routes.dart';
// import 'helpers/navigation_service.dart';
// import 'helpers/ui_helpers.dart';
//
// class WelcomeScree extends StatefulWidget {
//   const WelcomeScree({super.key});
//
//   @override
//   State<WelcomeScree> createState() => _WelcomeScreeState();
// }
//
// class _WelcomeScreeState extends State<WelcomeScree> {
//   final ScrollController _scrollController = ScrollController();
//   int _currentIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }
//
//   void _onScroll() {
//     double offset = _scrollController.offset;
//     double itemWidth = 325.w; // or whatever your item width + spacing is
//     int newIndex = (offset / itemWidth).round();
//
//     if (newIndex != _currentIndex) {
//       setState(() {
//         _currentIndex = newIndex;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset(
//               AppImages.welcome_photo, // <- Put your image in assets folder
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           // Content
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               //width: 212.w,
//               height: 350.h,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0x00ffffff), Color(0xf4ffffff), Colors.white],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 110,
//                           width: double.infinity,
//                           child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               controller: _scrollController,
//                               itemCount: 4,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: EdgeInsets.all(10),
//                                   child: SizedBox(
//                                     width: 350,
//                                     child: Column(
//                                       children: [
//                                         Text(
//                                           'Looking after your boiler is our responsibility ',
//                                           style: TextFontStyle
//                                               .textStyle32SatoshiW500,
//                                           textAlign: TextAlign.center,
//                                           //textAlign: TextAlign.center,
//                                         ),
//                                         Center(
//                                           child: Text(
//                                             'Lorem ipsum dolor sit amet, consectetur',
//                                             style: TextFontStyle
//                                                 .textStyle14SatoshiW400
//                                                 .copyWith(
//                                                     color: AppColor.cE2E2E2),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               }),
//                         ),
//                         Center(
//                           child: SmoothPageIndicator(
//                             controller: PageController(
//                                 initialPage: _currentIndex), // dummy controller
//                             count: 4,
//                             effect: const ExpandingDotsEffect(
//                               activeDotColor: AppColor.c010B21,
//                               dotColor: AppColor.cFFFFFF,
//                               dotHeight: 10,
//                               dotWidth: 10,
//                               strokeWidth: 1.5,
//                             ),
//                             onDotClicked: (index) {
//                               _scrollController.animateTo(
//                                 index * 284.w,
//                                 duration: Duration(milliseconds: 1000),
//                                 curve: Curves.easeInOut,
//                               );
//                             },
//                           ),
//                         ),
//                         UIHelper.verticalSpace(25.h),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 16.h),
//                           child: CustomButtonBlack(
//                             btnText: 'Get Started',
//                             onTap: () {
//                               NavigationService.navigateTo(Routes.joinAsScreen);
//                             },
//                             //centerIcon: AppIcons.righticon,
//                             rightIcon: AppIcons.righticon,
//                           ),
//                         ),
//                         UIHelper.verticalSpace(24.h),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 16.w),
//                           child: Text(
//                             'By continuing, you agree that you have read and accept our\n T&Cs and Privacy Policy',
//                             style: TextFontStyle.textStyle12SatoshiW400
//                                 .copyWith(color: AppColor.c191A1F,height: 1.55),
//                             textAlign: TextAlign.center,
//                           ),
//                         )
//                       ],
//                     ),
//                   ]),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
