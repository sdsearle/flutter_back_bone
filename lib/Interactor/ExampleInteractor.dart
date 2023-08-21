/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter_back_bone/Navigator/Navi.dart';
import 'package:flutter_back_bone/Repo/ExampleRepo.dart';
import 'package:flutter_back_bone/injection.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExampleInteractor {
  final ExampleRepo _exampleRepo = getIt<ExampleRepo>();
  final Navi _navi = getIt<Navi>();

  int getCounter() {
    // Get the counter value from the repository.
    return _exampleRepo.getCounter();
  }

  incrementCounter() {
    // Increment the counter value in the repository.
    _exampleRepo.incrementCounter();
  }

  goToSecondScreen() {
    _navi.goToSecondScreen();
  }
}