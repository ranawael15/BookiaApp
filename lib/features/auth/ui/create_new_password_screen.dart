import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/back_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../gen/codegen_loader.g.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(onPressed: (){
                  Navigator.pop(context);
                }),
                SizedBox(height: 29.h),
                Text(LocaleKeys.create_password_title.tr(),style: AppTextStyle.startText,),
                SizedBox(height: 10.h,),
                Text(LocaleKeys.password_unique_hint.tr(), style: AppTextStyle.hintStyle,),
                SizedBox(height: 32.h,),
                CustomTextFormField(hintText: LocaleKeys.new_password_hint.tr()),
                SizedBox(height: 15.h,),
                CustomTextFormField(hintText: LocaleKeys.confirm_new_password_hint.tr()),
                SizedBox(height: 38.h,),
                AppButton(onTap: (){

                }, text: LocaleKeys.reset_password_btn.tr()),
                SizedBox(height: 380.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
