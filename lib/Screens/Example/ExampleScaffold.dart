/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Screens/Example/ExampleInteractor.dart';
import 'package:flutter_back_bone/BaseClasses/BaseScaffold.dart';
import 'package:flutter_back_bone/injection.dart';

class ExampleScaffold extends BaseScaffold {
  const ExampleScaffold({super.key, required this.theme, required super.updater, required super.context, required this.interactor});

  final ThemeData theme;
  final ExampleInteractor interactor;

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
              '${interactor.getCounter()}',
              style: theme.textTheme.headlineMedium,
            ),
            TextButton(onPressed: () => interactor.goToSecondScreen(), child: const Text("Next Screen"))
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
    updater( () => interactor.incrementCounter());
  }
}
