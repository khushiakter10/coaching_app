
import 'dart:io';
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/features/update_home/contact_support/widget/custom_message_appbar.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';


class UserMessageScreen extends StatefulWidget {
  const UserMessageScreen({super.key});

  @override
  State<UserMessageScreen> createState() => _UserMessageScreenState();
}

class _UserMessageScreenState extends State<UserMessageScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<dynamic> _messages = [];
  File? _pickedImage;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    }
  }

  void _sendMessage() {
    setState(() {
      if (_pickedImage != null) {
        _messages.add(_pickedImage);
        _pickedImage = null;
      } else if (_messageController.text.trim().isNotEmpty) {
        _messages.add(_messageController.text.trim());
        _messageController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomMessageAppbar(
        text: 'Rahat',
        trnareText: 'Tränare @appname',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.h),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  final isMe = index % 2 == 0;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: message is File
                          ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.file(
                          message,
                          width: 68.w,
                          height: 68.h,
                          fit: BoxFit.cover,
                        ),
                      )
                          : Container(
                        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                        constraints: BoxConstraints(maxWidth: 260.w),
                        decoration: BoxDecoration(
                          color: isMe ? AppColor.c252525 : AppColor.cF4F4F4,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(isMe ? 16.r : 0),
                            topRight: Radius.circular(isMe ? 0 : 16.r),
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          ),
                        ),
                        child: Text(
                          message,
                          style: isMe
                              ? TextFontStyle.headline14cFFFFFFFigtreew400
                              : TextFontStyle.headline14c000E08Nunitow400,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            //___________________________ Button ___________________________//
            CustomButtonWidget(
              borderRadius: 100.r,
              heightbutton: 45.h,
              textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
              text: "Fråga om individuellt upplägg",
              onPressed: () {},
            ),
            UIHelper.verticalSpace(15.h),
            Divider(height: 1.h, color: AppColor.cE5E5E5),

            //___________________________ Message Input ___________________________//
            Container(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(AppIcons.copy, height: 24.h),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.cFFFFFF,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _messageController,
                        decoration: InputDecoration(
                          fillColor: AppColor.cF3F6F6,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          hintText: 'Skriv ditt meddelande',
                          hintStyle: TextFontStyle.headline12cA1A1A1Nunitow400,
                          contentPadding: EdgeInsets.all(12.r),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(  icon: SvgPicture.asset(AppIcons.canera, height: 24.h),onPressed: _pickImage),

                  IconButton(   icon: SvgPicture.asset(AppIcons.send, height: 40.h),onPressed: _sendMessage, ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
