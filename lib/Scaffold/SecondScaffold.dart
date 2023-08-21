/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/SecondInteractor.dart';
import 'package:flutter_back_bone/Scaffold/BaseScaffold.dart';
import 'package:flutter_back_bone/injection.dart';

class SecondScaffold extends BaseScaffold {
  //const ExampleScaffold({super.key, required this.theme, required this.exampleInteractor});
  SecondScaffold({super.key, required this.theme, required super.updater});

  final ThemeData theme;
  final SecondInteractor interactor =  getIt<SecondInteractor>();

  int get counter => 0;

  @override
  PreferredSizeWidget? get appBar => AppBar(
    backgroundColor: theme.colorScheme.inversePrimary,
    title: const Text("Second Screen"),
    leading: BackButton(
      onPressed: ()=> interactor.back(),
    ),
  );

  @override
  Widget? get body => const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'This is the second screen',
        )
      ],
    ),
  );

}
