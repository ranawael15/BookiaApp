import 'package:bookia_app/core/helper/app_constant.dart';
import 'package:bookia_app/core/routes/app_router.dart';
import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/features/bottom_nav_bar/ui/bottom_nav_bar_screen.dart';
import 'package:bookia_app/features/welcomeFeature/ui/welcome_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookiaApp extends StatelessWidget {
  const BookiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
            fontFamily: "DM",
            scaffoldBackgroundColor: Colors.white
        ),
        onGenerateRoute: AppRouter().onGenerateRoute,
        home: startScreen(),
      ),
    );
  }
  Widget startScreen(){
    if(AppConstant.token==null){
      return WelcomeScreen();
    }else{
      return BottomNavBarScreen();
    }
  }
}
