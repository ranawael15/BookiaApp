import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/theme/app_text_style.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/back_button.dart';
import 'package:bookia_app/core/widgets/custom_text_form_field.dart';
import 'package:bookia_app/features/auth/ui/forget_password_screen.dart';
import 'package:bookia_app/features/auth/ui/register_screen.dart';
import 'package:bookia_app/features/auth/ui/widgets/sign_in_widget.dart';
import 'package:bookia_app/features/homeFeature/ui/home_screen.dart';
import 'package:bookia_app/gen/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                CustomBackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 29.h),
                Text(
                  LocaleKeys.welcome_back.tr(),
                  style: AppTextStyle.startText,
                ),
                SizedBox(height: 32.h),
                CustomTextFormField(
                  hintText: tr(LocaleKeys.enter_email),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15.h),
                CustomTextFormField(
                  hintText: tr(LocaleKeys.enter_password),
                  keyboardType: TextInputType.visiblePassword,
                  isPass: true,
                ),
                SizedBox(height: 13.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (v)=> ForgetPasswordScreen()));
                        },
                        child: Text(LocaleKeys.forgot_password.tr(),style: AppTextStyle.hintStyle,)),
                  ],
                ),
                SizedBox(height: 30.h,),
                AppButton(onTap:
                    (){
                  Navigator.push(context, MaterialPageRoute(builder: (value)=> HomeScreen()));
                }, text: LocaleKeys.login.tr()),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(LocaleKeys.or.tr(),style: AppTextStyle.hintStyle,),
                  ],
                ),
                SizedBox(height: 21.h,),
                SignInWidget(
                    text: LocaleKeys.sign_google.tr(), svgPicture: Assets.images.googleIc),
                SizedBox(height: 15.h,),
                SignInWidget(text:
                LocaleKeys.sign_apple.tr(), svgPicture: Assets.images.cibApple),
                SizedBox(height: 50.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                      text: LocaleKeys.dont_have_account.tr(),
                      style: AppTextStyle.finalText,
                      children: [
                        TextSpan(
                          text: LocaleKeys.register_now.tr(),
                          style: AppTextStyle.finalText2,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (value)=> RegisterScreen()));
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
