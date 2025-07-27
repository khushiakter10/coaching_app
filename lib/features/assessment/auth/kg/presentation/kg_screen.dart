import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/common_widgets/custom_appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class KgScreen extends StatefulWidget {
  const KgScreen({super.key});

  @override
  State<KgScreen> createState() => _KgScreenState();
}
class _KgScreenState extends State<KgScreen> {
  final PageController _controller =
  PageController(viewportFraction: 0.2, initialPage: 60 - 40);
  int selectedWeight = 60;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.cFFFFFF,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 60.h,
          title: CustomAppBarWidget(
            title: 'Bedömning',
            text: '4 av 12',
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(child: Text(  'Vad väger du?', style: TextFontStyle.headline30c192126Urbanistw600)),
              UIHelper.verticalSpace(48.h),

              Container(
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColor.cF3F3F4,
                ),
                child: TabBar(
                  padding:
                  EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
                  dividerColor: Colors.transparent,
                  labelColor: AppColor.cFFFFFF,
                  unselectedLabelColor: AppColor.c676C75,
                  indicator: BoxDecoration(
                    color: AppColor.c192126,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextFontStyle.headline16FFFFFFFigtreew500,
                  unselectedLabelStyle:
                  TextFontStyle.headline16c676C75Figtreew500,
                  tabs: const [
                    Tab(text: 'kg'),
                    Tab(text: 'lbs'),
                  ],
                ),
              ),
              UIHelper.verticalSpace(35.h),

              // Weight Selector
              SizedBox(
                height: 300.h,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 45.h,
                        margin: EdgeInsets.symmetric(horizontal: 23.w),
                        decoration: BoxDecoration(
                          color: AppColor.cF3F3F4,
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                      ),

                      // Vertical PageView
                      PageView.builder(
                        controller: _controller,
                        itemCount: 150, // 40 to 189
                        scrollDirection: Axis.vertical,
                        onPageChanged: (index) {
                          setState(() => selectedWeight = index + 40);
                        },
                        itemBuilder: (_, index) {
                          final weight = index + 40;
                          final isSelected = weight == selectedWeight;
                          return Center(
                            child: Text(
                              '$weight',
                              style: isSelected
                                  ? TextFontStyle
                                  .headline40c252C32Figtreew700
                                  : TextFontStyle
                                  .headline20c6B7280Figtreew400.copyWith(fontSize: 28.sp),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 30.h, right: 23.w, left: 23.w),
          child: CustomButtonWidget(
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
            text: 'Fortsätt',
            borderRadius: 100.r,
            heightbutton: 56.h,
            onPressed: () {
              NavigationService.navigateTo(Routes.heightScreen);
            },
          ),
        ),
      ),
    );
  }
}
