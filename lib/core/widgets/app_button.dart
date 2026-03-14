import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/gen/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback onTap;
  final String text;
  const AppButton({super.key, this.backgroundColor, required this.onTap, required this.text,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 19.h),
        decoration: BoxDecoration(
          border: backgroundColor== null? null: Border.all(
            color: Colors.black
          ),
          color: backgroundColor??AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8.r)
        ),
        child: Text(text,
          style: TextStyle(fontSize: 15.sp,
              color: backgroundColor== Colors.white? Colors.black :Colors.white),),
      ),
    );
  }
}
