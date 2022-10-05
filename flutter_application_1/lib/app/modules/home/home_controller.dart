import 'package:flutter_application_1/app/modules/home/model/home_model.dart';
import 'package:flutter_application_1/app/modules/home/repository/home_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IHomeRepository repository;

  _HomeControllerBase({required this.repository}) {
    getMesas();
  }

  @observable
  List<HomeModel> listaMesas = List.empty();

  @action
  Future<void> getMesas() async {
    listaMesas = await repository.getMesas();
  }
}
