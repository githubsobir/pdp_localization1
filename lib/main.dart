import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('uz', 'UZ'), Locale('ru', 'RU'), Locale('fr', 'FR')],
        path: 'assets/translation', // <-- change patch to your
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()
    ),
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: MyHomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );

  }
}
