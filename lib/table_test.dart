// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wix_buddy_flutter/helpers/ui_helpers.dart';
//
// class PriceTableWidget extends StatefulWidget {
//   const PriceTableWidget({super.key});
//
//   @override
//   State<PriceTableWidget> createState() => _PriceTableWidgetState();
// }
//
// class _PriceTableWidgetState extends State<PriceTableWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           UIHelper.verticalSpace(90.h),
//           Container(
//
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(4.r),
//             ),
//             child: Table(
//               border: TableBorder.all(color: Colors.white, width: 1.0),
//               columnWidths: const {
//                 0: FlexColumnWidth(2.0), // Timeframe column
//                 1: FlexColumnWidth(2.5), // Category column
//                 2: FlexColumnWidth(1.0), // $ column
//               },
//               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//               children: [
//                 // Header row
//                 TableRow(
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                   ),
//                   children: [
//                     _buildHeaderCell('Timeframe'),
//                     _buildHeaderCell('Category'),
//                     _buildHeaderCell('\$'),
//                   ],
//                 ),
//                 // Data row 1
//                 TableRow(
//                   children: [
//                     _buildDataCell('Weekdays 6pm-8am'),
//                     _buildDataCell('Evening/Night Callouts'),
//                     _buildDataCell('+£10-£20 per visit'),
//                   ],
//                 ),
//                 // Data row 2
//                 TableRow(
//                   children: [
//                     _buildDataCell('Weekends'),
//                     _buildDataCell('Sat/Sun (all day)'),
//                     _buildDataCell('+£15-£25 per visit'),
//                   ],
//                 ),
//                 // Data row 3
//                 TableRow(
//                   children: [
//                     _buildDataCell('Bank Holidays'),
//                     _buildDataCell('All hours'),
//                     _buildDataCell('+£25-£40 per visit'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHeaderCell(String text) {
//     return Padding(
//       padding: EdgeInsets.all(8.0.w),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16.sp,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
//
//   Widget _buildDataCell(String text) {
//     return Padding(
//       padding: EdgeInsets.all(8.0.w),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 14.sp,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// import 'package:swipeable_button_view/swipeable_button_view.dart';
//
//
//
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreen2State createState() => _HomeScreen2State();
// }
//
// class _HomeScreen2State extends State<HomeScreen2> {
//   bool isFinished = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Payment Screen'),
//         backgroundColor: Color(0xFF009C41),
//         elevation: 0,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Center(
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 20.0),
//                             child: Text('EUR',
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.grey.shade500)),
//                           ),
//                           Text(
//                             '20.00',
//                             style: TextStyle(
//                                 fontSize: 80, color: Colors.grey.shade500),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: SwipeableButtonView(
//                   buttonText: 'Online',
//                   buttonWidget: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   activeColor: Color(0xFF009C41),
//                   isFinished: isFinished,
//                   onWaitingProcess: () {
//                     Future.delayed(Duration(seconds: 2), () {
//                       setState(() {
//                         isFinished = true;
//                       });
//                     });
//                   },
//                   onFinish: () async {
//
//
//                     //TODO: For reverse ripple effect animation
//                     setState(() {
//                       isFinished = false;
//                     });
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// class SimpleContactBar extends StatelessWidget {
//   const SimpleContactBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 16),
//           margin: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.phone, size: 28, color: Colors.black),
//                   SizedBox(height: 4),
//                   Text("Contact", style: TextStyle(color: Colors.black)),
//                 ],
//               ),
//               Container(
//                 height: 40,
//                 width: 1,
//                 color: Colors.grey.shade300,
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.navigation, size: 28, color: Colors.black),
//                   SizedBox(height: 4),
//                   Text("Get Directions", style: TextStyle(color: Colors.black)),
//                 ],
//               ),
//               Container(
//                 height: 40,
//                 width: 1,
//                 color: Colors.grey.shade300,
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.message, size: 28, color: Colors.black),
//                   SizedBox(height: 4),
//                   Text("Message", style: TextStyle(color: Colors.black)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// class HomeLogoDesign extends StatelessWidget {
//   const HomeLogoDesign({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ClipPath(
//         clipper: BottomCurveClipper(),
//         child: Container(
//           height: 300.h,
//           width: double.infinity,
//            decoration: BoxDecoration(
//              image: DecorationImage(image:AssetImage('assets/icons/housLogoPng.png',),fit: BoxFit.cover),
//            ),
//
//         ),
//       ),
//     );
//   }
// }
//
// // Custom Clipper for bottom curve
// class BottomCurveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 60);
//     path.quadraticBezierTo(
//       size.width / 2, size.height,
//       size.width, size.height - 60,
//     );
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCallsScreen extends StatefulWidget {
  const PhoneCallsScreen({super.key});

  @override
  State<PhoneCallsScreen> createState() => _PhoneCallsScreenState();
}

class _PhoneCallsScreenState extends State<PhoneCallsScreen> {
  // Function to make phone call
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // ensures external dialer opens
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: GestureDetector(
            onTap: () => makePhoneCall('+4431612345678'), // Replace with actual number
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey.shade400,
              radius: 50.r,
              child: Icon(
                Icons.call,
                size: 49.h,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
