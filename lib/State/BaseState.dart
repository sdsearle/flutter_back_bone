/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';

import '../Navigator/Navi.dart';
import '../Widget/BaseWidget.dart';
import '../injection.dart';

class BaseState<T> extends State<BaseWidget> {

  final Navi _navi = getIt<Navi>();

  @override
  void initState() {
    super.initState();
    _navi.setCurrentContext(context);
    // Log the initState lifecycle step.
    Fimber.d("initState");
  }

  @override
  void dispose() {
    super.dispose();
    // Log the dispose lifecycle step.
    Fimber.d("dispose");
  }

  @override
  Widget build(BuildContext context) {
    // Log the build lifecycle step.
    Fimber.d("build");
    return Container();
  }

  //TODO: Update this to Variadic function once Dart allows for this
  void updater(Function function) {
    // Log the updater lifecycle step.
    Fimber.d("updating");
    if(mounted == true) {
      setState(() {function.call();});
    }
  }
}