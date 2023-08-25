/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/ExampleInteractor.dart';
import 'package:flutter_back_bone/injection.dart';

import '../Interactor/BaseInteractor.dart';
import '../Scaffold/ExampleScaffold.dart';
import '../Widget/ExampleWidget.dart';
import 'BaseState.dart';

class ExampleState extends BaseState<ExampleWidget> {
  @override
  covariant ExampleInteractor interactor = getIt<ExampleInteractor>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ExampleScaffold(
      theme: Theme.of(context),
      context: context,
      updater: updater,
      interactor: interactor,
    );
  }
}
