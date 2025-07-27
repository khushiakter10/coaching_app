
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/how_you_trial_works/widget/time_line_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';




class HowYouTrialWorksScreen extends StatefulWidget {
  const HowYouTrialWorksScreen({super.key,});
  @override
  State<HowYouTrialWorksScreen> createState() => _HowYouTrialWorksScreenState();
}

class _HowYouTrialWorksScreenState extends State<HowYouTrialWorksScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  final List<Map<String, String>> timelineData = [
    {
      "title": "Idag",
      "description": "Lås upp vårt bibliotek av meditationer, sömnljud och mer.",
    },
    {
      "title": "Om 5 dagar",
      "description": "Vi skickar en påminnelse om att din provperiod snart går ut.",
    },
    {
      "title": "Om 7 dagar",
      "description": "Du kommer att debiteras den 28 mars, avbryt när som helst innan dess.",
    },

  ];

  final List<String> imageList = [
    'assets/icons/signutrewith.svg',
    'assets/icons/bellicon.svg',
    'assets/icons/staricon.svg',

  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: AppBar(
        toolbarHeight: 60.h,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading:  Transform.scale(scale: 0.50,
            child: GestureDetector(child: SvgPicture.asset(AppIcons.blackcross,height: 24.h),onTap: (){NavigationService.goBack;})),
        backgroundColor: Colors.transparent,

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
        child: Column(
          children: [
            Text('Hur din provperiod fungerar',  style:  TextFontStyle.headline16000000Figtreew600.copyWith(fontSize: 24.sp)),
            UIHelper.verticalSpace(6.h),
            Text('Första 7 dagarna gratis, sedan \$12.99/månad', style:  TextFontStyle.headline14c4B586BFigtreew400),
            UIHelper.verticalSpace(16.h),
            Text('Prissättning för',style: TextFontStyle.headline16c86888CFigtreew500),
            UIHelper.verticalSpace(8.h),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(color: AppColor.cDFE1E7, width: 1.w),
                color: AppColor.c000000,
              ),
              height: 45.h,
              width: 270.w,
              child: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                labelColor: AppColor.cFFFFFF,
                unselectedLabelColor: AppColor.c9D9D9D,
                indicator: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.c1BA7FE,
                      AppColor.c0B50FE,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28.r),
                ),
                tabs:  [
                  Tab(child: Text('Månatligt')),
                  Tab(child: Text('Årligt')),
                ],
              ),
            ),
            UIHelper.verticalSpace(25.h),

            TimelineListWidget(
              timelineData: timelineData,
              imageList: imageList,
            ),
            UIHelper.verticalSpace(20.h),
            Text('Återställ köp',  style:  TextFontStyle.headline14c192126Urbanistw500.copyWith(fontSize: 13.sp),textAlign: TextAlign.center),


          ],
        ),
      ),


      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 15.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/bacroundimage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                EdgeInsets.symmetric(vertical: 36.0.h, horizontal: 23.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hur kan jag avbryta?',style: TextFontStyle.headline16c393939Figtreew700),

                    UIHelper.verticalSpace(6.h),
                    Text(
                      'Det är enkelt: Öppna Blinkist-appen, tryck på Inställningar uppe till höger och sedan "Avbryt gratis provperiod" Nu är du i din ',maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextFontStyle.headline14c545454Figtreew400.copyWith(fontSize: 15.sp),

                    ),
                  ],
                ),
              ),
            ),

            CustomButtonWidget(
              heightbutton: 56.h,
              borderRadius: 100.r,
              text: 'Börja min gratis provperiod',
              color: AppColor.c000000,
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              onPressed: (){NavigationService.navigateTo(Routes.qustionScreen);},

            ),
          ],
        ),
      ),

    );

  }
}