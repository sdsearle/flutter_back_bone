/**
 * Created by sdsearle on 8/20/2023.
 */

import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  const BaseScaffold({super.key, required this.updater});

  final Function updater;
}