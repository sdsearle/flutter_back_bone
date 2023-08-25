/**
 * Created by Spencer Searle, github: sdsearle on 8/23/2023.
 */

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_back_bone/Custom%20Widgets/ExampleCustomWidget/ExampleCustomInteractor.dart';

/**
 * Created by Spencer Searle, github: sdsearle on 8/21/2023.
 */

class ExampleCustomContainer extends Container {
  ExampleCustomContainer(
      {super.key, required this.theme, required this.updater, required this.context, required this.interactor});

  final Function updater;
  final ThemeData theme;
  final BuildContext context;
  ExampleCustomInteractor interactor;
  String get string => interactor.string;

  @override
  Widget? get child => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(
                      bottom: 4, // HERE THE IMPORTANT PART
                    ),
                    labelText: "Text Input",
                    border: OutlineInputBorder(),
                    helperMaxLines: 3,
                    helperStyle: TextStyle(fontSize: 8),
                    helperText: "Enter Text Here"),
                onChanged: (text) => {
                  interactor.string = text,
                  updater(() => {
                    Fimber.d(string),
                  })
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text("Show Input"),
                onPressed: () => {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        Fimber.d(string);
                        return AlertDialog(title: Text("Title"),
                          content: Text(string),
                          actions: [
                            TextButton(onPressed: () => {Navigator.pop(context)}, child: Text("Close"))
                          ],
                        );
                      }
                  )

                },
              ),
            ),
          ),
        ],
      );
}
