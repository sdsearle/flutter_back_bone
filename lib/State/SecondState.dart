import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Scaffold/SecondScaffold.dart';
import '../Widget/SecondWidget.dart';
import 'BaseState.dart';

class SecondState extends BaseState<SecondWidget> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SecondScaffold(theme: Theme.of(context), refresh: refresh);
  }}