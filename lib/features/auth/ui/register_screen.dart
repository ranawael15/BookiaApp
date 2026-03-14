import 'package:bookia_app/core/theme/app_text_style.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/back_button.dart';
import 'package:bookia_app/core/widgets/custom_text_form_field.dart';
import 'package:bookia_app/features/auth/ui/login_screen.dart';
import 'package:bookia_app/gen/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                SizedBox(height: 28.h,),
                Text(LocaleKeys.helloRegister.tr(),
                  style: AppTextStyle.startText,),
                SizedBox(height: 38.h,),
                CustomTextFormField(hintText: LocaleKeys.enter_username.tr()),
                SizedBox(height: 11.h,),
                CustomTextFormField(hintText: LocaleKeys.email.tr()),
                SizedBox(height: 11.h,),
                CustomTextFormField(hintText: LocaleKeys.password.tr()),
                SizedBox(height: 11.h,),
                CustomTextFormField(hintText: LocaleKeys.confirm_password.tr()),
                SizedBox(height: 30.h,),
                AppButton(onTap: (){}, text: LocaleKeys.register.tr()),
                SizedBox(height: 80.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                        text: LocaleKeys.already_have_account.tr(),
                        style: AppTextStyle.finalText,
                        children: [
                          TextSpan(
                              text: LocaleKeys.login_now.tr(),
                              style: AppTextStyle.finalText2,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context, MaterialPageRoute(builder: (value)=> LoginScreen()));
                                }
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
