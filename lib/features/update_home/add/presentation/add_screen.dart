import 'dart:io';
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/add/widget/custom_bench_press_widget.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';


class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {


  File? _selectedImage;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar:  CustomAppBar(text: 'Lägg till ny träning'),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Träningsbild',style: TextFontStyle.headline16000000Figtreew700),
            UIHelper.verticalSpace(8.h),
            ////////////////////////////////// File ///////////////////////////////////////////////
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: double.infinity,
                height: 126.h,
                decoration: BoxDecoration(
                  color: AppColor.cF3F3F4,
                  borderRadius: BorderRadius.circular(16.r),
                  image: _selectedImage != null
                      ? DecorationImage(
                    image: FileImage(_selectedImage!),
                    fit: BoxFit.cover,
                  )
                      : null,
                ),
                child: _selectedImage == null
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.fileicon, height: 40.h),
                    UIHelper.verticalSpace(8.h),
                    Text("Lägg till måltidsbild", style: TextFontStyle.headline16c767778Nunitow500)

                  ],
                )
                    : null,
              ),
            ),


            ////////////////////////////////// Done ///////////////////////////////////////////////
            UIHelper.verticalSpace(20.h),
            Row(
                children: [
                  Text('Lägg till en träningstitel',style: TextFontStyle.headline18cA1A1A1Nunitow500),
                  Spacer(),
                  SvgPicture.asset(AppIcons.filecopy,height: 32.h)]),

            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Container(padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 24.w),
                  decoration: BoxDecoration(
                      color: AppColor.cF3F3F4,
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Text('Typ',style: TextFontStyle.headline14c192126Urbanistw500),
                ),
                UIHelper.horizontalSpace(20.w),
                SvgPicture.asset(AppIcons.clock,height: 16.h),
                UIHelper.horizontalSpace(4.w),
                Text('Ställ in påminnelse',style: TextFontStyle.headline12c424242Nunitow400)

              ],
            ),

            UIHelper.verticalSpace(12.h),

            Divider(  height: 1.h,  color: AppColor.cE7E7E7,),
            UIHelper.verticalSpace(20.h),
            Text('Lägg till träning (1)',style: TextFontStyle.headline16000000Figtreew700),

            UIHelper.verticalSpace(10.h),
            CustomBenchPressWidget(text: 'Bänkpress'),

            UIHelper.verticalSpace(24.h),

            CustomButtonWidget(
              heightbutton: 56.h,
              text: 'Lägg till träning',
              borderRadius: 100.r,
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              onPressed: (){
                NavigationService.navigateTo(Routes.addNewWorkoutScreen);
              },
            )






          ],
        ),
      ),

      bottomNavigationBar:
      Padding(padding: EdgeInsets.only(left: 23.w, right: 23.w, bottom: 25.h),
        child: CustomButtonWidget(
          heightbutton: 56.h,
          borderRadius: 100.r,
          text: 'Spara och lägg till i träning',
          color: AppColor.cCCCCCC,
          textStyle: TextFontStyle.headline16000000Figtreew600,
        ),
      )
      ,
    );
  }
}


