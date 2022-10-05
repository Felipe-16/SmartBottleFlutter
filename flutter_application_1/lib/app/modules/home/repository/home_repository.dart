import 'package:flutter_application_1/app/modules/home/model/home_model.dart';
import 'package:flutter_application_1/app/modules/home/repository/home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var listaFilmes = [
    HomeModel(numero: '1', notificacao: '0', ativa: true),
    HomeModel(numero: '2', notificacao: '1', ativa: true),
    HomeModel(numero: '3', notificacao: '0', ativa: true),
    HomeModel(numero: '4', notificacao: '1', ativa: true),
    HomeModel(numero: '5', notificacao: '0', ativa: true),
    HomeModel(numero: '6', notificacao: '1', ativa: true),
    HomeModel(numero: '7', notificacao: '0', ativa: true),
    HomeModel(numero: '8', notificacao: '1', ativa: true),
    
  ];
  @override
  Future<List<HomeModel>> getMesas() async {
    return Future.value(listaFilmes);
  }
}
