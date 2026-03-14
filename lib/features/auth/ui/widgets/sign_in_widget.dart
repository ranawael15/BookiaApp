import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignInWidget extends StatelessWidget {
  final String svgPicture;
  final String text;
  const SignInWidget({super.key, required this.text, required this.svgPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SvgPicture.asset(
            svgPicture,
        width: 24,
        height: 24,),
        SizedBox(width: 3.w,),
        Text(text, style: AppTextStyle.hintStyle,)
      ],),
    );
  }
}
