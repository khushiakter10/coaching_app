import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/assets_helper/app_images.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();

}
class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool obscurePassword1 = true;

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
               Spacer(flex: 3),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //_____________________________________ Email __________________________________________________//

                    Text('E-postadress', style: TextFontStyle.headline16c111214Figtreew700),

                    UIHelper.verticalSpace(8.h),

                    CustomTextFormfield(
                      controller: emailController,
                      leadingIcon: AppIcons.emailSvg,
                      hintText: 'elementary221b@gmail.com',
                      labelText: 'Email',

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                    UIHelper.verticalSpace(24.h),
          //_____________________________________ Done  __________________________________________________//

          //_____________________________________ password  Field __________________________________________________//
                    Text('Lösenord',
                        style: TextFontStyle.headline16c111214Figtreew700),
                    UIHelper.verticalSpace(8.h),

                    CustomTextFormfield(
                      controller: passwordController,
                      obscureText: obscurePassword1,
                      leadingIcon: AppIcons.lock,
                      trailingIcon:
                          obscurePassword1 ? AppIcons.silnt : AppIcons.solid,
                      hintText: '***********',
                      labelText: 'Confirm Password',
                      onTrailingIconPressed: () {
                        setState(() {
                          obscurePassword1 = !obscurePassword1;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    UIHelper.verticalSpace(24.h),

          //_____________________________________ Done __________________________________________________//
          //_____________________________________ Buttoon __________________________________________________//

                    CustomButtonWidget(
                      borderRadius: 19.r,
                      heightbutton: 56.h,
                      textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
                      text: "Logga in",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          NavigationService.navigateToWithArgs(Routes.navigationScreen, {'pageNum': 0});

                        }
                      },
                    ),
          //_____________________________________ Done __________________________________________________//
                  ],
                ),
              ),
              UIHelper.verticalSpace(40.h),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Har du inget konto? ',style: TextFontStyle.headline14c676C75Figtreew500),

                      GestureDetector(onTap: () {NavigationService.navigateTo(  Routes.completeYourProfileScreen);},
                        child: Text('Registrera dig.',    style: TextFontStyle.headline14c676C75Figtreew500))]),


                  UIHelper.verticalSpace(16.h),
                  GestureDetector(onTap: () {NavigationService.navigateTo(Routes.forgetPasswordScreen);},

                      child: Text('Glömt lösenord?',style: TextFontStyle.headline14cF97316Figtreew500)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:EdgeInsets.symmetric(vertical: 1.h, horizontal: 53),
                        color: AppColor.cF97316,
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
