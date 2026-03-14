import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class AppTextStyle {
  ///style for hint text in app
   static TextStyle hintStyle= TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "DM",
     color: AppColors.darkGrey
  );
   static TextStyle finalText = TextStyle(
     fontSize: 14.sp,
     fontFamily: "DM",
     color: Colors.black,
     fontWeight: FontWeight.w400,
   );
   static TextStyle finalText2 = TextStyle(
     fontSize: 14.sp,
     fontFamily: "DM",
     fontWeight: FontWeight.w400,
     color: AppColors.primaryColor
   );
   static TextStyle startText = TextStyle(
         fontFamily: "DM",
         fontSize: 30.sp,
         fontWeight: FontWeight.w400,
   );
}