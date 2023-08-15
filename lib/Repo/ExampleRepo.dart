import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';

@injectable
@singleton
class ExampleRepo {
  static final ExampleRepo _exampleRepo = ExampleRepo._internal();

  factory ExampleRepo(){
    return _exampleRepo;
  }

  int counter = 0;

  Future<void> incrementCounter() async {
    Fimber.d("counter updated");
    counter++;
    Fimber.d("$counter");
  }

  getCounter() { return counter;}

  ExampleRepo._internal();
}
