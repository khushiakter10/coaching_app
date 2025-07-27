
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
import 'package:flutter_svg/svg.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController elemeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController elementaryController = TextEditingController();


  bool obscurePassword1 = true;
  bool obscurePassword2 = true;

  @override
  void dispose() {
    elemeController.dispose();
    emailController.dispose();
    passwordController.dispose();
    elementaryController.dispose();
    super.dispose();
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
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 56.h),
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

                  child: GestureDetector( onTap: () {NavigationService.goBack();},
                      child:
                      SvgPicture.asset(AppIcons.arrwright, height: 24.h)),
                ),
                UIHelper.verticalSpace(22.h),
                Text('Skapa ett konto.',style: TextFontStyle.headline16c111214Figtreew700),

                UIHelper.verticalSpace(8.h),
                Text('Ange ditt användarnamn, e-post och lösenord. Om du glömmer det, måste du återställa lösenordet.',style: TextFontStyle.headline14c4B586BFigtreew400),
                UIHelper.verticalSpace(29.h),

                //______________________________________________ Användarnamn ________________________________________//
                Text('Användarnamn',style: TextFontStyle.headline16c111214Figtreew700),
                UIHelper.verticalSpace(8.h),
                CustomTextFormfield(
                  controller: elemeController,
                  leadingIcon: AppIcons.profileIcon,
                  hintText: 'eleme',
                  labelText: 'eleme',
                ),
                UIHelper.verticalSpace(24.h),
                //______________________________________________ Done ________________________________________//

                //______________________________________________ E-postadress  ________________________________________//
                Text('E-postadress',style: TextFontStyle.headline16c111214Figtreew700),

                UIHelper.verticalSpace(8.h),
                CustomTextFormfield(
                  controller: emailController,
                  leadingIcon: AppIcons.smsIcon,
                  hintText: 'elementary221b@gmail.com',
                  labelText: 'Email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) return 'Invalid email format';
                    return null;
                  },
                ),
                UIHelper.verticalSpace(24.h),
                //______________________________________________ Done  ________________________________________//

                //______________________________________________ Lösenord  ________________________________________//
                Text('Lösenord',style: TextFontStyle.headline16c111214Figtreew700),
                UIHelper.verticalSpace(8.h),

                CustomTextFormfield(
                  controller: passwordController,
                  obscureText: obscurePassword1,
                  leadingIcon: AppIcons.lockIcon,
                  trailingIcon:
                  obscurePassword1 ? AppIcons.silnt : AppIcons.solid,
                  hintText: '***********',
                  labelText: 'Password',
                  onTrailingIconPressed: () {
                    setState(() {
                      obscurePassword1 = !obscurePassword1;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                UIHelper.verticalSpace(24.h),
                //______________________________________________ Done  ________________________________________//

                //______________________________________________ Bekräfta lösenord  ________________________________________//
                Text('Bekräfta lösenord',style: TextFontStyle.headline16c111214Figtreew700),
                UIHelper.verticalSpace(8.h),
                CustomTextFormfield(
                  controller: elementaryController,
                  obscureText: obscurePassword2,
                  leadingIcon: AppIcons.lockIcon,
                  trailingIcon:
                  obscurePassword2 ? AppIcons.silnt : AppIcons.solid,
                  hintText: 'elementary221|',
                  labelText: 'element',
                  onTrailingIconPressed: () {
                    setState(() {
                      obscurePassword2 = !obscurePassword2;
                    });
                  },
                ),
                //______________________________________________ Done _________________________________________________//

                UIHelper.verticalSpace(71.h),

                CustomButtonWidget(
                  textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
                  text: "Registrera dig",
                  onPressed: () { if (_formKey.currentState!.validate()) {NavigationService.navigateTo(Routes.trainingGoalScreen);}},
                  arrwicon: SvgPicture.asset(AppIcons.arrw),
                  borderRadius: 19.r,
                  heightbutton: 56.h,
                ),

                UIHelper.verticalSpace(16.h),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Har du redan ett konto?',style: TextFontStyle.headline14c676C75Figtreew500),
                    UIHelper.horizontalSpace(5.w),

                    GestureDetector(
                      child: Text('Logga in.', style: TextFontStyle.headline14c676C75Figtreew500),onTap: (){NavigationService.navigateTo( Routes.signInScreen);},),



                  ],
                )],
            ),
          ),
        ),
      ),
    );
  }
}
