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
import 'package:flutter_svg/svg.dart';


class CreateNewPassWordScreen extends StatefulWidget {
  const CreateNewPassWordScreen({super.key});

  @override
  State<CreateNewPassWordScreen> createState() => _CreateNewPassWordScreenState();
}

class _CreateNewPassWordScreenState extends State<CreateNewPassWordScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();



  bool obscurePassword1 = true;
  bool obscurePassword2 = true;

  @override
  void dispose() {


    passwordController.dispose();
    confirmPasswordController.dispose();

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
              Text('Skapa nytt lösenord',style: TextFontStyle.headline16c111214Figtreew700),

              UIHelper.verticalSpace(6.h),
              Text(  'Ange ditt nya lösenord. Om du glömmer det måste du göra en lösenordsåterställning.', style: TextFontStyle.headline14c4B586BFigtreew400),
              UIHelper.verticalSpace(32.h),


              //______________________________________________ Lösenord  ________________________________________//
              Text('Lösenord',  style: TextFontStyle.headline16c111214Figtreew700),

              UIHelper.verticalSpace(8.h),

              CustomTextFormfield(
                controller: passwordController,
                obscureText: obscurePassword1,
                leadingIcon: AppIcons.lock,
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
              UIHelper.verticalSpace(16.h),
              //______________________________________________ Done  ________________________________________//

              //______________________________________________ Bekräfta lösenord  ________________________________________//
              Text('Bekräfta lösenord',style: TextFontStyle.headline16c111214Figtreew700),
              UIHelper.verticalSpace(8.h),

              CustomTextFormfield(
                controller: confirmPasswordController,
                obscureText: obscurePassword2,
                leadingIcon: AppIcons.lock,
                trailingIcon:
                obscurePassword2 ? AppIcons.silnt : AppIcons.solid,
                hintText: '***********',
                labelText: 'ConfirmPassword',
                onTrailingIconPressed: () {
                  setState(() {
                    obscurePassword2 = !obscurePassword2;
                  });
                },
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar:   Padding(
        padding: EdgeInsets.only(bottom: 30.h, right: 23, left: 23),
        child: CustomButtonWidget(
          heightbutton: 56.h,
          borderRadius: 100.r,
          textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          text: "Spara & Fortsätt",
          onPressed: (){NavigationService.navigateTo(Routes.signInScreen);},
        ),
      ),
    );
  }
}
