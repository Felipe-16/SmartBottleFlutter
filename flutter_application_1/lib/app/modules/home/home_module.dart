import 'package:flutter_application_1/app/modules/home/home_controller.dart';
import 'package:flutter_application_1/app/modules/home/home_page.dart';
import 'package:flutter_application_1/app/modules/home/repository/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(repository: i())),
    Bind.lazySingleton<HomeRepository>((i) => HomeRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
