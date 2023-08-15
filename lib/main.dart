import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/res/ThemeManager.dart';
import 'package:flutter_back_bone/res/Themes.dart';

import 'Navigator/Navi.dart';
import 'injection.dart';

final globalNav = GlobalKey<NavigatorState>();

void main() {
  configureDependencies();
  Fimber.plantTree(DebugTree());
  runApp(MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  final Navi _navi = getIt<Navi>();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      //darkTheme: darkTheme,
      //themeMode: _themeManager.themeMode,
      navigatorKey: globalNav,//_navi.navKey,
      initialRoute: _navi.initial,
      routes: _navi.routes,
      themeMode: ThemeMode.system,
    );
  }
}
