import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';

import '../Widget/BaseWidget.dart';

class BaseState<T> extends State<BaseWidget> {
  @override
  void initState() {
    super.initState();
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