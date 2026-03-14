import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/features/auth/ui/login_screen.dart';
import 'package:bookia_app/features/auth/ui/register_screen.dart';
import 'package:bookia_app/gen/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.welcomeBackground.image().image,
          fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Row(

              children: [
                IconButton(onPressed: (){
                  if(context.locale.languageCode=="ar"){
                    context.setLocale(Locale("en"));
                  }else{
                    context.setLocale(Locale("ar"));
                  }
                },icon: Icon(Icons.language),),
              ],
            ),
          SizedBox(height: 105.h,),
          Assets.images.splash.image(),
            SizedBox(height: 28.h,),
            Expanded(
              child: Text(LocaleKeys.orderNow.tr(),
              style: TextStyle(fontSize: 20.sp),
              ),
            ),
            AppButton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              text: LocaleKeys.login.tr(),
            ),
            SizedBox(height: 15.h,),
            AppButton(
              backgroundColor: Colors.white,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
              },
              text: LocaleKeys.register.tr(),
            ),
            SizedBox(height: 94.h,)
        ],),
      )
    );
  }
}
