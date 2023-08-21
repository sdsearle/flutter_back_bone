/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/ExampleInteractor.dart';
import 'package:flutter_back_bone/Scaffold/BaseScaffold.dart';
import 'package:flutter_back_bone/injection.dart';

class ExampleScaffold extends BaseScaffold {
  ExampleScaffold({super.key, required this.theme, required super.updater});

  final ThemeData theme;
  final ExampleInteractor exampleInteractor =  getIt<ExampleInteractor>();

  int get counter => 0;

  @override
  PreferredSizeWidget? get appBar => AppBar(
    title: const Text("Example App"),
  );

  @override
  Widget? get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${exampleInteractor.getCounter()}',
              style: theme.textTheme.headlineMedium,
            ),
            TextButton(onPressed: () => exampleInteractor.goToSecondScreen(), child: const Text("Next Screen"))
          ],
        ),
      );

  @override
  Widget? get floatingActionButton => FloatingActionButton(
        onPressed: () => incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      );

  incrementCounter() {
    updater( () => exampleInteractor.incrementCounter());
  }
}
