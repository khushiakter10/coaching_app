
import 'dart:io';
import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/common_widgets/appbar_widget.dart';
import 'package:coaching_app/common_widgets/custom_button_widget.dart';
import 'package:coaching_app/common_widgets/custom_text_formfield.dart';
import 'package:coaching_app/features/update_home/my_meals/widget/custom_lunch.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:coaching_app/helpers/navigation_service.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:coaching_app/provider/catagori.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';


class CreatOwnMealScreen extends StatefulWidget {
  const CreatOwnMealScreen({super.key});

  @override
  State<CreatOwnMealScreen> createState() => _CreatOwnMealScreenState();
}
class _CreatOwnMealScreenState extends State<CreatOwnMealScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  double _proteinValue = 0.3;
  double _carbValue = 0.5;
  double _fatValue = 0.4;
  double _calorieValue = 0.6;

  final List<Map<String, dynamic>> categories = const [
    {'label': 'Frukost'},
    {'label': 'Lunch'},
    {'label': 'Mellanmål'},
    {'label': 'Middag'},
    {'label': 'Drycker'},
  ];

  @override
  void dispose() {
    nameController.dispose();
    timeController.dispose();
    super.dispose();
  }
  /////////////////////////////////////////Image Picker ///////////////////////////////////////////////////

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

  ///////////////////////////////////////// Done  ///////////////////////////////////////////////////


  Widget buildSlider(String title, double value, Function(double) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
            Text('g', style: TextFontStyle.headline12c818181Nunitow400),
          ],
        ),
        UIHelper.verticalSpace(8.h),

        Container(
          margin: EdgeInsets.only(top: 4.h),
          width: double.infinity,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 8.h,
              overlayShape: SliderComponentShape.noOverlay,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
              activeTrackColor: AppColor.c1D1F24,
              inactiveTrackColor: AppColor.cF3F3F4,
              thumbColor: AppColor.cBFBEBE,
            ),
            child: Slider(
              value: value,
              min: 0.0,
              max: 1.0,
              onChanged: onChanged,
            ),
          ),
        ),
        UIHelper.verticalSpace(8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('10', style: TextFontStyle.headline16c0E101FNunitow700),
            Text((value * 1000).toStringAsFixed(0), style: TextFontStyle.headline16c0E101FNunitow700),
          ],
        ),
        UIHelper.verticalSpace(20.h),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<CatagoriProvider>().selectedCategoryIndex;
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF,
      appBar: CustomAppBar(text: 'Lägg till ny måltid'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Måltidsnamn', style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
          UIHelper.verticalSpace(8.h),
          CustomTextFormfield(
            controller: nameController,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            hintText: 'Ange måltidens titel',
            hintStyle: TextFontStyle.headline16c767778Nunitow500,
          ),
          UIHelper.verticalSpace(20.h),
          buildSlider('Protein', _proteinValue, (val) => setState(() => _proteinValue = val)),
          buildSlider('Kolhydrater', _carbValue, (val) => setState(() => _carbValue = val)),
          buildSlider('Fett', _fatValue, (val) => setState(() => _fatValue = val)),
          buildSlider('Totala kalorier', _calorieValue, (val) => setState(() => _calorieValue = val)),


          Text('Tidsåtgång', style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
          UIHelper.verticalSpace(8.h),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: GestureDetector(
                    onTap: () => context.read<CatagoriProvider>().setSelectedCategory(index),
                    child: CategoryWidget(
                      label: category['label'],
                      isSelected: index == selectedIndex,
                      isDisabled: false,
                    ),
                  ),
                );
              },
            ),
          ),

          UIHelper.verticalSpace(20.h),
          Text('Tidsåtgång', style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
          UIHelper.verticalSpace(8.h),
          CustomTextFormfield(
            controller: timeController,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            hintText: '5 min',
            hintStyle: TextFontStyle.headline16c767778Nunitow500,
          ),

          UIHelper.verticalSpace(20.h),
          Text('Måltidsbild', style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
          UIHelper.verticalSpace(8.h),

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
                  Text("Lägg till måltidsbild",
                      style: TextFontStyle.headline16c767778Nunitow500)
                ],
              )
                  : null,
            ),
          ),

          UIHelper.verticalSpace(20.h),
          Text('Ytterligare anteckning', style: TextFontStyle.headline14000000Urbanistw500.copyWith(fontSize: 16.sp)),
          UIHelper.verticalSpace(8.h),
          Container( padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
              decoration: BoxDecoration(color: AppColor.cF3F3F4, borderRadius: BorderRadius.circular(12.r)),
              child: Padding(  padding: EdgeInsets.all(8.sp),
                  child: Text(
                      'Skriv här....sectetur. Magna sollicitudin eu tristique tellus ut lacus lectus ultrices. Diam tincidunt suspendisse volutpat arcu nec arcu neque. Eu porta nisl viverra aliquam.',   textAlign: TextAlign.start))),
          UIHelper.verticalSpace(20.h),
        ]),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.only(left: 23.w, right: 23.w, bottom: 25.h),
        child: CustomButtonWidget(
            borderRadius: 100.r,
            heightbutton: 56.h,
            text: 'Spara och stäng',
            color: AppColor.c000000,
            textStyle: TextFontStyle.headline16cFFFFFFFigtreew600,
            onPressed: () {
              NavigationService.navigateTo(Routes.omelettScreen);}),
      ),
    );
  }
}
