import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  const BaseScaffold({super.key, required this.refresh});

  final Function refresh;
}