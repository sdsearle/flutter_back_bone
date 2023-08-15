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

  void refresh() {
    if(mounted == true) {
      setState(() {});
    }
  }
}