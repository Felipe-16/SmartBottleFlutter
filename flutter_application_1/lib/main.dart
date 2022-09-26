import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
