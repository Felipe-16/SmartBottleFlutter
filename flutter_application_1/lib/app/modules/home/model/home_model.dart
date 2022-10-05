class HomeModel {
  final String numero;
  final String notificacao;
  final bool ativa;

  HomeModel(
      {required this.numero, required this.notificacao, required this.ativa});

  factory HomeModel.newInstance() {
    return HomeModel(
      numero: '',
      notificacao: '',
      ativa: false,
    );
  }
}
