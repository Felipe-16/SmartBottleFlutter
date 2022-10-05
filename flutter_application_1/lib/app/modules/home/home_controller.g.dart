// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$listaMesasAtom =
      Atom(name: '_HomeControllerBase.listaMesas', context: context);

  @override
  List<HomeModel> get listaMesas {
    _$listaMesasAtom.reportRead();
    return super.listaMesas;
  }

  @override
  set listaMesas(List<HomeModel> value) {
    _$listaMesasAtom.reportWrite(value, super.listaMesas, () {
      super.listaMesas = value;
    });
  }

  late final _$getMesasAsyncAction =
      AsyncAction('_HomeControllerBase.getMesas', context: context);

  @override
  Future<void> getMesas() {
    return _$getMesasAsyncAction.run(() => super.getMesas());
  }

  @override
  String toString() {
    return '''
listaMesas: ${listaMesas}
    ''';
  }
}
