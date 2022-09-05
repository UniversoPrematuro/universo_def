// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InitialStore on _InitialStoreBase, Store {
  late final _$controllerEmailAtom =
      Atom(name: '_InitialStoreBase.controllerEmail', context: context);

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
      Atom(name: '_InitialStoreBase.controllerPass', context: context);

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

  late final _$idLogadoAtom =
      Atom(name: '_InitialStoreBase.idLogado', context: context);

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

  late final _$erroAtom =
      Atom(name: '_InitialStoreBase.erro', context: context);

  @override
  String? get erro {
    _$erroAtom.reportRead();
    return super.erro;
  }

  @override
  set erro(String? value) {
    _$erroAtom.reportWrite(value, super.erro, () {
      super.erro = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_InitialStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('_InitialStoreBase.signIn', context: context);

  @override
  Future signIn(UserModel user) {
    return _$signInAsyncAction.run(() => super.signIn(user));
  }

  late final _$_InitialStoreBaseActionController =
      ActionController(name: '_InitialStoreBase', context: context);

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.changePass');
    try {
      return super.changePass(value);
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateEmail() {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.validateEmail');
    try {
      return super.validateEmail();
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePass() {
    final _$actionInfo = _$_InitialStoreBaseActionController.startAction(
        name: '_InitialStoreBase.validatePass');
    try {
      return super.validatePass();
    } finally {
      _$_InitialStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass},
idLogado: ${idLogado},
erro: ${erro},
loading: ${loading}
    ''';
  }
}
