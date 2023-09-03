/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter_back_bone/Navigator/Navi.dart';
import 'package:flutter_back_bone/Screens/Example/ExampleRepo.dart';
import 'package:flutter_back_bone/injection.dart';
import 'package:injectable/injectable.dart';

import '../../BaseClasses/BaseInteractor.dart';

@injectable
class SecondInteractor extends BaseInteractor{
  final navi = getIt<Navi>();
  final repo = getIt<ExampleRepo>();

  void addViews(){
    repo.addView();
  }

  void back(){
    navi.back();
  }

  getViews() {
    return repo.getViews();
  }
}