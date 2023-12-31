import 'package:flutter/src/material/theme_data.dart';

import '../../BaseClasses/BaseState.dart';
import '../../BaseClasses/BaseWidget.dart';
import 'ExampleCustomState.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 8/23/2023.
 */

class ExampleCustomWidget extends BaseWidget {
  const ExampleCustomWidget({super.key});

  @override
  BaseState<ExampleCustomWidget> createState() => ExampleCustomState();
}