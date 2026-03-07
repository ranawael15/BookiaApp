import 'package:bookia_app/bookia_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en', 'US'),
      child: BookiaApp()));
}