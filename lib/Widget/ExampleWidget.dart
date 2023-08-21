/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter_back_bone/Widget/BaseWidget.dart';
import '../State/BaseState.dart';
import '../State/ExampleState.dart';

class ExampleWidget extends BaseWidget {
  const ExampleWidget({super.key, required this.title});

  final String title;

  @override
  BaseState<ExampleWidget> createState() => ExampleState();
}