import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/features/assessment/auth/complete_your_profile_screen/widget/image_controller.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class CompleteYourProfileScreen extends StatefulWidget {
  const CompleteYourProfileScreen({super.key});

  @override
  State<CompleteYourProfileScreen> createState() =>
      _CompleteYourProfileScreenState();
}

class _CompleteYourProfileScreenState extends State<CompleteYourProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController alderController = TextEditingController();
  final TextEditingController platsController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    alderController.dispose();
    platsController.dispose();
    super.dispose();
  }

  final ProfileImageController controller = Get.put(ProfileImageController());

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColor.cFFFFFF,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Text('Take Photo',
                    style: TextFontStyle.headline14c4B586BFigtreew400),
                onTap: () {
                  Navigator.pop(context); // Bottom Sheet
                  controller.pickImageFromCamera();
                },
              ),
              UIHelper.verticalSpace(10.h),
              Divider(color: AppColor.cE1E6EF),
              UIHelper.verticalSpace(10.h),
              GestureDetector(
                  child: Text('Select from library',
                      style: TextFontStyle.headline14c4B586BFigtreew400),
                  onTap: () {
                    Navigator.pop(context);
                    controller.pickImageFromGallery();
                  }),
            ],
          ),
        );
      },
    );
  }



  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        alderController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.signin),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 50.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 11.h, horizontal: 11.w),
                  decoration: BoxDecoration(
                    color: AppColor.cF3F3F4,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: GestureDetector(onTap: () { NavigationService.goBack;},

                      child: SvgPicture.asset(AppIcons.arrwright, height: 24.h)),

                ),
                UIHelper.verticalSpace(14.h),
                Text('Slutför din profil.', style: TextFontStyle.headline16c111214Figtreew700),

                UIHelper.verticalSpace(8.h),
                Text('Oroa dig inte, endast du kan se dina personliga data. Ingen annan kommer att kunna se dem.',style: TextFontStyle.headline14c4B586BFigtreew400),

                UIHelper.verticalSpace(29.h),

                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Obx(() {
                        return CircleAvatar(
                          radius: 45.r,
                          backgroundImage: controller.profileImage.value != null
                              ? FileImage(controller.profileImage.value!)
                              : AssetImage('assets/image/avatarimge.png')
                                  as ImageProvider,
                        );
                      }),
                      Positioned(
                        bottom: 7,
                        right: 7,
                        child: Container(
                          height: 16.h,
                          width: 16.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showBottomSheet(context);
                            },
                            child: Transform.scale(
                              scale: 1.1,
                              child: SvgPicture.asset(AppIcons.profilecopy,fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                UIHelper.verticalSpace(29.h),
                Text('Namn', style: TextFontStyle.headline16c111214Figtreew700),
                UIHelper.verticalSpace(8.h),
                CustomTextFormfield(
                  controller: nameController,
                  leadingIcon: AppIcons.smsIcon,
                  hintText: 'elementary',
                  labelText: 'elementary',

                ),
                UIHelper.verticalSpace(24.h),
                Text('Ålder',style: TextFontStyle.headline16c111214Figtreew700),

                UIHelper.verticalSpace(8.h),
                CustomTextFormfield(
                  controller: alderController,
                  leadingIcon: AppIcons.calender,
                  labelText: 'Ålder',
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.h),
                    child: SvgPicture.asset(AppIcons.calender),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return '22';
                    return null;
                  },
                ),
                UIHelper.verticalSpace(24.h),
                Text('Plats',style: TextFontStyle.headline16c111214Figtreew700),
                UIHelper.verticalSpace(8.h),

                CustomTextFormfield(
                  controller: platsController,
                  leadingIcon: AppIcons.location,
                  hintText: 'Location',
                  labelText: 'location',
                ),
                UIHelper.verticalSpace(71.h),

                CustomButtonWidget(
                  borderRadius: 19.r,
                  heightbutton: 56.h,
                  textStyle: TextFontStyle. headline16cFFFFFFFigtreew600,
                  text: "Registrera dig",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      NavigationService.navigateTo(Routes.signUpScreen);
                    }
                  },
                  arrwicon: SvgPicture.asset(AppIcons.arrw),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
