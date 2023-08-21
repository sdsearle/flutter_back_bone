/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Scaffold/ExampleScaffold.dart';
import '../Widget/ExampleWidget.dart';
import 'BaseState.dart';

class ExampleState extends BaseState<ExampleWidget> {


@override
Widget build(BuildContext context) {
  super.build(context);
  return ExampleScaffold(theme: Theme.of(context), updater: updater);
}}