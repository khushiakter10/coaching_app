import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';




class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,

      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: GestureDetector(child: SvgPicture.asset(AppIcons.arrwicon,height: 24.h),onTap: (){
            NavigationService.goBack;
          },),
        )

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Glömt lösenord?', style: TextFontStyle.headline16c111214Figtreew700),
              UIHelper.verticalSpace(6.h),
              Text('Ange din e-postadress. Vi skickar en OTP-kod för verifiering i nästa steg.',style: TextFontStyle.headline14c4B586BFigtreew400),
              UIHelper.verticalSpace(40.h),
              Text('E-post',style: TextFontStyle.headline16c111214Figtreew700),

              UIHelper.verticalSpace(8.h),
              CustomTextFormfield(
                controller: emailController,
                obscureText: false,
                leadingIcon: AppIcons.smsIcon,
                hintText: 'elementary221b@gmail.com',
                labelText: 'Email',
                onTrailingIconPressed: null,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              UIHelper.verticalSpace(24.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h, right: 23.w, left: 23.w),
        child: CustomButtonWidget(
          heightbutton: 56.h,
          arrwicon: SvgPicture.asset(AppIcons.arrw),
          textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          text: 'Fortsätt',
          borderRadius: 100.r,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              NavigationService.navigateTo(Routes.otpScreen);
            }
          },
        ),
      ),
    );
  }
}
