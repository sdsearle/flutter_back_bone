import 'package:flutter/cupertino.dart';
import 'package:flutter_back_bone/res/Strings.dart';
import 'package:injectable/injectable.dart';

import '../Widget/ExampleWidget.dart';
import '../Widget/SecondWidget.dart';
import '../injection.dart';
import '../main.dart';

@injectable
@singleton
class Navi{
  final _navi = globalNav;

  GlobalKey<NavigatorState> get navKey => _navi;

  BuildContext? get context => _navi.currentContext;

  get initial => routes[0];

  void back(){
    Navigator.pop(context!);
  }

  void goToSecondScreen() {
    Navigator.pushNamed(context!, '/second');
  }

  Map<String, Widget Function(BuildContext)> routes = {
    '/' : (context) => const ExampleWidget(title: Strings.title),
    '/second' : (context) => const SecondWidget(),
  };

}