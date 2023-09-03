/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter_back_bone/Custom%20Widgets/ExampleCustomWidget/ExampleCustomWidget.dart';
import 'package:injectable/injectable.dart';

@injectable
@singleton
class ExampleRepo {
  static final ExampleRepo _exampleRepo = ExampleRepo._internal();

  factory ExampleRepo(){
    return _exampleRepo;
  }


  final List<ExampleCustomWidget> _widgets = [];

  int counter = 0;

  Future<void> incrementCounter() async {
    counter++;
    Fimber.d("$counter");
  }

  void addView(){
    _widgets.add(
      const ExampleCustomWidget()
    );
  }

  getCounter() { return counter;}

  ExampleRepo._internal();

  getViews() {
    return _widgets;
  }
}
