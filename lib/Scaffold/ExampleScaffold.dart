import 'package:flutter/material.dart';
import 'package:flutter_back_bone/Interactor/ExampleInteractor.dart';
import 'package:flutter_back_bone/Scaffold/BaseScaffold.dart';
import 'package:flutter_back_bone/injection.dart';

class ExampleScaffold extends BaseScaffold {
  //const ExampleScaffold({super.key, required this.theme, required this.exampleInteractor});
  ExampleScaffold({super.key, required this.theme, required super.refresh});

  final ThemeData theme;
  final ExampleInteractor exampleInteractor =  getIt<ExampleInteractor>();

  int get counter => 0;

  @override
  // TODO: implement appBar
  PreferredSizeWidget? get appBar => AppBar(
    // TRY THIS: Try changing the color here to a specific color (to
    // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    // change color while the other colors stay the same.
    backgroundColor: theme.colorScheme.inversePrimary,
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: const Text("Example App"),
  );

  @override
  // TODO: implement body
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
  // TODO: implement floatingActionButton
  Widget? get floatingActionButton => FloatingActionButton(
        onPressed: () => incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      );

  incrementCounter() {
    exampleInteractor.incrementCounter();
    refresh();
  }
}
