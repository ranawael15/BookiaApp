import 'package:bookia_app/features/auth/ui/create_new_password_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/back_button.dart';
import '../../../gen/codegen_loader.g.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                Text(LocaleKeys.otp_title.tr(),style: AppTextStyle.startText,),
                SizedBox(height: 10.h,),
                Text(LocaleKeys.otp_description.tr(), style: AppTextStyle.hintStyle,),
                SizedBox(height: 30.h,),
                AppButton(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (value)=> CreateNewPasswordScreen()));
                }, text: LocaleKeys.verify_btn.tr()),
                SizedBox(height: 380.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                        text: LocaleKeys.no_code_received.tr(),
                        style: AppTextStyle.finalText,
                        children: [
                          TextSpan(
                              text: LocaleKeys.resend_code.tr(),
                              style: AppTextStyle.finalText2,
                          )
                        ]
                    )),
                  ],
                ),
                SizedBox(height: 30.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
