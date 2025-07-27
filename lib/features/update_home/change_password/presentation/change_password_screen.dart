import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChangePassworsScreen extends StatefulWidget {
  const ChangePassworsScreen({super.key});

  @override
  State<ChangePassworsScreen> createState() => _ChangePassworsScreenState();
}
class _ChangePassworsScreenState extends State<ChangePassworsScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController currentPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  bool obscurePassword1 = true;
  bool obscurePassword2 = true;
  bool obscurePassword3 = true;

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Ändra Lösenord'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Ändra Lösenord',style: TextFontStyle.headline16000000Figtreew600    .copyWith(fontSize: 24.sp)),
              UIHelper.verticalSpace(6.h),
              Text('Uppdatera ditt lösenord för att hålla ditt konto säkert.',style: TextFontStyle.headline14c4B586BFigtreew400),
              UIHelper.verticalSpace(32.h),

              //______________________________________________  Current Pasword ________________________________________//
              Text('Nuvarande Lösenord',style: TextFontStyle.headline20c111214Figtreew600.copyWith(fontSize: 16.sp)),
              UIHelper.verticalSpace(8.h),

              CustomTextFormfield(
                controller: currentPasswordController,
                obscureText: obscurePassword1,
                leadingIcon: AppIcons.lock,
                trailingIcon:
                    obscurePassword1 ? AppIcons.silnt : AppIcons.solid,
                hintText: '***********',
                labelText: 'Current Password',
                onTrailingIconPressed: () {
                  setState(() {
                    obscurePassword1 = !obscurePassword1;
                  });
                },
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Current Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              UIHelper.verticalSpace(16.h),
              //______________________________________________ Done ________________________________________//

              //______________________________________________ newPasswordC  ________________________________________//
              Text('Nytt Lösenord',style: TextFontStyle.headline20c111214Figtreew600 .copyWith(fontSize: 16.sp)),

              UIHelper.verticalSpace(8.h),

              CustomTextFormfield(
                controller: newPasswordController,
                obscureText: obscurePassword2,
                leadingIcon: AppIcons.lock,
                trailingIcon:
                    obscurePassword2 ? AppIcons.silnt : AppIcons.solid,
                hintText: '***********',
                labelText: 'New Password',
                onTrailingIconPressed: () {
                  setState(() {
                    obscurePassword2 = !obscurePassword2;
                  });
                },
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'New Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              //______________________________________________ Done  ________________________________________//
              UIHelper.verticalSpace(16.h),

              //______________________________________________ Confirm Paasword   ________________________________________//
              Text('Bekräfta Lösenord',style: TextFontStyle.headline20c111214Figtreew600 .copyWith(fontSize: 16.sp)),
              UIHelper.verticalSpace(8.h),

              CustomTextFormfield(
                controller: confirmPasswordController,
                obscureText: obscurePassword3,
                leadingIcon: AppIcons.lock,
                trailingIcon:
                    obscurePassword3 ? AppIcons.silnt : AppIcons.solid,
                hintText: '***********',
                labelText: 'ConfirmPassword',
                onTrailingIconPressed: () {
                  setState(() {
                    obscurePassword3 = !obscurePassword3;
                  });
                },
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Confirm Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              //______________________________________________ Done  ________________________________________//

            ],
          ),
        ),
      ),

      bottomNavigationBar:Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
        child: CustomButtonWidget(
          borderRadius: 100.r,
         heightbutton: 56.h,
          textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
          text: "Spara & Fortsätt",
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              NavigationService.navigateTo(Routes.manageSubcriptionScreen);
            }
          },
        ),
      ),


    );
  }
}
