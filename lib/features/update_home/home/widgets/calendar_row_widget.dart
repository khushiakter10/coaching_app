import 'package:coaching_app/assets_helper/app_fonts.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CalendarRowWidget extends StatefulWidget {
  const CalendarRowWidget({super.key});

  @override
  State<CalendarRowWidget> createState() => _CalendarRowWidgetState();
}

class _CalendarRowWidgetState extends State<CalendarRowWidget> {
  final List<String> days = ['Mån', 'Tis', 'Ons', 'Tors', 'Fre', 'Lör', 'Sön'];
  String? selectedDay;

  @override
  void initState() {
    super.initState();
    selectedDay = days[DateTime.now().weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days.map((day) {
        int dayNumber = 8 + days.indexOf(day); // 8, 9, 10, ...
        bool isSelected = selectedDay == day;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedDay = day;
            });
          },
          child: Container(
            width: 40.w,
            height: 60.w,
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day,
                  style: isSelected
                      ? TextFontStyle.textStyle14cFFFFFFSatoshiW400
                      : TextFontStyle.headline14c676C75Figtreew500,
                ),
                UIHelper.verticalSpace(6),
                Text(
                  dayNumber.toString(),
                  style: isSelected
                      ? TextFontStyle.textStyle14cFFFFFFSatoshiW400
                      : TextFontStyle.headline14c676C75Figtreew500,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
