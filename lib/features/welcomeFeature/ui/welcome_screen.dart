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
        decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.welcomeBackground.image().image)
        ),
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            IconButton(onPressed: (){
              if(context.locale.languageCode=="ar"){
                context.setLocale(Locale("en"));
              }else{
                context.setLocale(Locale("ar"));
              }
            },icon: Icon(Icons.language),),
          SizedBox(height: 105.h,),
          Assets.images.splash.image(),
            Text(LocaleKeys.orderNow.tr()),

        ],),
      )
    );
  }
}
