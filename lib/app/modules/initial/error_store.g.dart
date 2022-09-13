// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ErrorStore on _ErrorStoreBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_ErrorStoreBase.hasErrors'))
          .value;

  late final _$emailAtom =
      Atom(name: '_ErrorStoreBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passAtom = Atom(name: '_ErrorStoreBase.pass', context: context);

  @override
  String? get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String? value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  late final _$_ErrorStoreBaseActionController =
      ActionController(name: '_ErrorStoreBase', context: context);

  @override
  void setEmailError(String error) {
    final _$actionInfo = _$_ErrorStoreBaseActionController.startAction(
        name: '_ErrorStoreBase.setEmailError');
    try {
      return super.setEmailError(error);
    } finally {
      _$_ErrorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassError(String error) {
    final _$actionInfo = _$_ErrorStoreBaseActionController.startAction(
        name: '_ErrorStoreBase.setPassError');
    try {
      return super.setPassError(error);
    } finally {
      _$_ErrorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
pass: ${pass},
hasErrors: ${hasErrors}
    ''';
  }
}
