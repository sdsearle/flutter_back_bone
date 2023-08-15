import 'package:flutter_back_bone/Navigator/Navi.dart';
import 'package:flutter_back_bone/injection.dart';
import 'package:injectable/injectable.dart';

@injectable
class SecondInteractor {
  final navi = getIt<Navi>();

  void back(){
    navi.back();
  }
}