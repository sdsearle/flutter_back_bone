/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Scaffold/SecondScaffold.dart';
import '../Widget/SecondWidget.dart';
import 'BaseState.dart';

class SecondState extends BaseState<SecondWidget> {


  @override
  Widget build(BuildContext context) {
    return SecondScaffold(theme: Theme.of(context), updater: updater);
  }}