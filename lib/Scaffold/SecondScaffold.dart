/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/SecondInteractor.dart';
import 'package:flutter_back_bone/Scaffold/BaseScaffold.dart';
import 'package:flutter_back_bone/injection.dart';

class SecondScaffold extends BaseScaffold {
  //const ExampleScaffold({super.key, required this.theme, required this.exampleInteractor});
  SecondScaffold({super.key, required this.theme, required super.context, required super.updater, required this.interactor});

  final ThemeData theme;

  SecondInteractor interactor;

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
  Widget? get body => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: interactor.getViews().length,
            itemBuilder: (context, index) => interactor.getViews()[index],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            updater(
                  () => {
                interactor.addViews(),
              },
            );
          },
          child: const Text('Add String'),
        )

      ],
    ),
  );

}
