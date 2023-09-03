/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter_back_bone/BaseClasses/BaseWidget.dart';
import '../../BaseClasses/BaseState.dart';
import 'SecondState.dart';

class SecondWidget extends BaseWidget {
  const SecondWidget({super.key});

  @override
  BaseState<SecondWidget> createState() => SecondState();
}