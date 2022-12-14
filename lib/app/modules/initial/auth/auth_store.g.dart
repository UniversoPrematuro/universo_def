// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  late final _$idLogadoAtom =
      Atom(name: '_AuthStoreBase.idLogado', context: context);

  @override
  String? get idLogado {
    _$idLogadoAtom.reportRead();
    return super.idLogado;
  }

  @override
  set idLogado(String? value) {
    _$idLogadoAtom.reportWrite(value, super.idLogado, () {
      super.idLogado = value;
    });
  }

  late final _$controllerNameMomAtom =
      Atom(name: '_AuthStoreBase.controllerNameMom', context: context);

  @override
  TextEditingController get controllerNameMom {
    _$controllerNameMomAtom.reportRead();
    return super.controllerNameMom;
  }

  @override
  set controllerNameMom(TextEditingController value) {
    _$controllerNameMomAtom.reportWrite(value, super.controllerNameMom, () {
      super.controllerNameMom = value;
    });
  }

  late final _$controllerEmailAtom =
      Atom(name: '_AuthStoreBase.controllerEmail', context: context);

  @override
  TextEditingController get controllerEmail {
    _$controllerEmailAtom.reportRead();
    return super.controllerEmail;
  }

  @override
  set controllerEmail(TextEditingController value) {
    _$controllerEmailAtom.reportWrite(value, super.controllerEmail, () {
      super.controllerEmail = value;
    });
  }

  late final _$controllerPassAtom =
      Atom(name: '_AuthStoreBase.controllerPass', context: context);

  @override
  TextEditingController get controllerPass {
    _$controllerPassAtom.reportRead();
    return super.controllerPass;
  }

  @override
  set controllerPass(TextEditingController value) {
    _$controllerPassAtom.reportWrite(value, super.controllerPass, () {
      super.controllerPass = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_AuthStoreBase.save', context: context);

  @override
  Future<dynamic> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase', context: context);

  @override
  dynamic register(UserModel user) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.register');
    try {
      return super.register(user);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
idLogado: ${idLogado},
controllerNameMom: ${controllerNameMom},
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass}
    ''';
  }
}
