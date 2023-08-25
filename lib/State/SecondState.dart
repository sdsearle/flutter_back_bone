/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/SecondInteractor.dart';
import 'package:flutter_back_bone/injection.dart';

import '../Scaffold/SecondScaffold.dart';
import '../Widget/SecondWidget.dart';
import 'BaseState.dart';

class SecondState extends BaseState<SecondWidget> {
  @override
  covariant SecondInteractor interactor = getIt<SecondInteractor>();

  @override
  Widget build(BuildContext context) {
    return SecondScaffold(
      theme: Theme.of(context),
      context: context,
      updater: updater,
      interactor: interactor,
    );
  }
}
