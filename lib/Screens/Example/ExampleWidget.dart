/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter_back_bone/BaseClasses/BaseWidget.dart';
import '../../BaseClasses/BaseState.dart';
import 'ExampleState.dart';

class ExampleWidget extends BaseWidget {
  const ExampleWidget({super.key, required this.title});

  final String title;

  @override
  BaseState<ExampleWidget> createState() => ExampleState();
}