import 'package:bookia_app/bookia_app.dart';
import 'package:bookia_app/core/helper/app_constant.dart';
import 'package:bookia_app/core/networking/dio_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  DioHelper.init();
  AppConstant.token = prefs.getString("token");

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      child: BookiaApp()));
}


//flutter pub run easy_localization:generate -S assets/translations -0 lib/gen/translations -o local_keys.g.dart -f keys

//dart run easy_localization:generate -S assets/translations -O lib/gen عشان ازود الكلام للترجمة

//dart run easy_localization:generate -S assets/translations -O lib/gen -f keys دة الصح

//dart run build_runner build --delete-conflicting-outputs
