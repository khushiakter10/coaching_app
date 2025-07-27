import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TrainingplanScreen extends StatefulWidget {
  const TrainingplanScreen({super.key});

  @override
  State<TrainingplanScreen> createState() => _TrainingplanScreenState();
}

class _TrainingplanScreenState extends State<TrainingplanScreen> {
  int? selectedIndex;

  final List<String> medelText = ['Nybörjare', 'Medel', 'Avancerad'];
  final List<String> medelDescription = [
    'Ny till träning eller har varit inaktiv under en längre tid.',
    'Deltar regelbundet i träning med måttlig konsekvens och intensitet',
    'Mycket konsekvent och intensiv träningsrutin med betydande erfarenhet och kapabilitet'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        title: CustomAppBarWidget(
          title: 'Bedömning',
          text: '7 av 17',
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(padding: EdgeInsets.all(8.sp),
              child: Text('Har du tidigare erfarenhet av träning?',style: TextFontStyle.headline30c192126Urbanistw600,textAlign: TextAlign.center)),


            GridView.builder(
              itemCount: medelText.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.w,
                childAspectRatio: 170 / 175,
              ),
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: isSelected ? AppColor.c192126 : AppColor.cF3F3F4,
                      border: Border.all(
                        color:
                        isSelected ? AppColor.cDADBDC : Colors.transparent,
                        width: 2.w,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(    medelText[index],
                          style: isSelected
                              ? TextFontStyle.headline16cFFFFFFFigtreew600
                              : TextFontStyle.headline16000000Figtreew600,
                        ),
                        UIHelper.verticalSpace(16.h),

                        Text(  medelDescription[index],
                          style: isSelected
                              ? TextFontStyle.headline14cFFFFFFFigtreew400
                              : TextFontStyle.headline14c323232Figtreew400,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UIHelper.verticalSpace(12.h),
            CustomButtonWidget(
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: 'Fortsätt',
              borderRadius: 100.r,
              heightbutton: 56.h,
              onPressed: () {
                NavigationService.navigateTo(
                    Routes.weeksScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
