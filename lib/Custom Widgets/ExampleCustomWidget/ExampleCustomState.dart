import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Custom%20Widgets/ExampleCustomWidget/ExampleCustomContainer.dart';
import 'package:flutter_back_bone/Custom%20Widgets/ExampleCustomWidget/ExampleCustomInteractor.dart';
import 'package:flutter_back_bone/BaseClasses/BaseInteractor.dart';

import '../../BaseClasses/BaseState.dart';
import '../../injection.dart';
import 'ExampleCustomWidget.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 8/23/2023.
 */

class ExampleCustomState extends BaseState<ExampleCustomWidget>{

  @override
  covariant ExampleCustomInteractor interactor = getIt<ExampleCustomInteractor>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ExampleCustomContainer(updater: updater, theme: Theme.of(context), context: context, interactor: interactor );
  }

}