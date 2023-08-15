import 'package:flutter_back_bone/Widget/BaseWidget.dart';
import '../State/BaseState.dart';
import '../State/SecondState.dart';

class SecondWidget extends BaseWidget {
  const SecondWidget({super.key});

  @override
  BaseState<SecondWidget> createState() => SecondState();
}