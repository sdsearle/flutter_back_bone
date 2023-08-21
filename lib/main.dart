/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/res/Themes.dart';

import 'Navigator/Navi.dart';
import 'injection.dart';

void main() {
  configureDependencies();
  Fimber.plantTree(DebugTree());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Navi _navi = getIt<Navi>();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: _navi.initial,
      routes: _navi.routes,
      themeMode: ThemeMode.system,
    );
  }
}
