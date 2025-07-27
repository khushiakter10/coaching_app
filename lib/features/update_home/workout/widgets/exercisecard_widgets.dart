import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ExerciseCard extends StatelessWidget {
  final String image;
  final String title;
  final int sets;
  final int reps;
  final VoidCallback onTechniqueTap;

  const ExerciseCard({
    Key? key,
    required this.image,
    required this.title,
    required this.sets,
    required this.reps,
    required this.onTechniqueTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color:AppColor.cFFFCFB,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColor.cF2F2F2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        SizedBox(
          height: 80.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  
                  fit: BoxFit.cover,
                ),
              ),
              UIHelper.horizontalSpace(12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                    
                    Text(
                      '$sets set • $reps repetitioner',
                      style: const TextStyle(
                        color: Color(0xFFB0B0B0),
                        fontSize: 14,
                      ),
                    ),
                    
                    GestureDetector(
                      onTap: onTechniqueTap,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Row(
                          children: [
                            Icon(Icons.play_circle_outlined,color:Color(0xFF3D7BFF) ,size:12,),Text(
                              'Titta på teknik',
                              style: TextStyle(
                                color: Color(0xFF3D7BFF),
                                fontSize: 14,
                               
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
          const SizedBox(height: 12),
          for (int i = 1; i <= sets; i++) ...[
            Text('Set $i', style: const TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 6),
            SizedBox(
              height: 36.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Vikt (lbs)',
                        contentPadding:  EdgeInsets.symmetric(vertical: 0.h, horizontal: 8.w),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColor.cE1E6EF),
                        ),
                        filled: true,
                        fillColor: AppColor.cFFFFFF,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:  EdgeInsets.symmetric(vertical: 0.h, horizontal: 8.w),
                        hintText: 'Anteckningar',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColor.cE1E6EF),
                        ),
                        filled: true,
                        fillColor: AppColor.cFFFFFF,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
          SizedBox(
            height: 36.h,
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFFE8F9F0),
                side: const BorderSide(color: Color(0xFF3DDC97)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
               
              ),
              onPressed: () {},
              child:  Text(
                'Markera som slutförd',
                style: TextStyle(
                  color: Color(0xFF3DDC97),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}