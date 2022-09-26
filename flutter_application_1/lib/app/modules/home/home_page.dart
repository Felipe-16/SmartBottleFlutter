import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/home_controller.dart';
import 'package:flutter_application_1/shared/Components/app_bar_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'Sem Titulo ainda',
          icon: Icons.login_outlined,
        ),
        body: null);
  }
}
