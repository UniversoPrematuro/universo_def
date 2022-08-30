// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditStore on _EditStoreBase, Store {
  late final _$controllerKidNameAtom =
      Atom(name: '_EditStoreBase.controllerKidName', context: context);

  @override
  TextEditingController get controllerKidName {
    _$controllerKidNameAtom.reportRead();
    return super.controllerKidName;
  }

  @override
  set controllerKidName(TextEditingController value) {
    _$controllerKidNameAtom.reportWrite(value, super.controllerKidName, () {
      super.controllerKidName = value;
    });
  }

  late final _$controllerKidBirthAtom =
      Atom(name: '_EditStoreBase.controllerKidBirth', context: context);

  @override
  TextEditingController get controllerKidBirth {
    _$controllerKidBirthAtom.reportRead();
    return super.controllerKidBirth;
  }

  @override
  set controllerKidBirth(TextEditingController value) {
    _$controllerKidBirthAtom.reportWrite(value, super.controllerKidBirth, () {
      super.controllerKidBirth = value;
    });
  }

  late final _$controllerWeeksAtom =
      Atom(name: '_EditStoreBase.controllerWeeks', context: context);

  @override
  TextEditingController get controllerWeeks {
    _$controllerWeeksAtom.reportRead();
    return super.controllerWeeks;
  }

  @override
  set controllerWeeks(TextEditingController value) {
    _$controllerWeeksAtom.reportWrite(value, super.controllerWeeks, () {
      super.controllerWeeks = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_EditStoreBase.idLogado', context: context);

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

  late final _$kidPhotoAtom =
      Atom(name: '_EditStoreBase.kidPhoto', context: context);

  @override
  XFile? get kidPhoto {
    _$kidPhotoAtom.reportRead();
    return super.kidPhoto;
  }

  @override
  set kidPhoto(XFile? value) {
    _$kidPhotoAtom.reportWrite(value, super.kidPhoto, () {
      super.kidPhoto = value;
    });
  }

  late final _$momPhotoAtom =
      Atom(name: '_EditStoreBase.momPhoto', context: context);

  @override
  XFile? get momPhoto {
    _$momPhotoAtom.reportRead();
    return super.momPhoto;
  }

  @override
  set momPhoto(XFile? value) {
    _$momPhotoAtom.reportWrite(value, super.momPhoto, () {
      super.momPhoto = value;
    });
  }

  late final _$uploadAtom =
      Atom(name: '_EditStoreBase.upload', context: context);

  @override
  bool get upload {
    _$uploadAtom.reportRead();
    return super.upload;
  }

  @override
  set upload(bool value) {
    _$uploadAtom.reportWrite(value, super.upload, () {
      super.upload = value;
    });
  }

  late final _$photoURLAtom =
      Atom(name: '_EditStoreBase.photoURL', context: context);

  @override
  String get photoURL {
    _$photoURLAtom.reportRead();
    return super.photoURL;
  }

  @override
  set photoURL(String value) {
    _$photoURLAtom.reportWrite(value, super.photoURL, () {
      super.photoURL = value;
    });
  }

  late final _$momURLAtom =
      Atom(name: '_EditStoreBase.momURL', context: context);

  @override
  String get momURL {
    _$momURLAtom.reportRead();
    return super.momURL;
  }

  @override
  set momURL(String value) {
    _$momURLAtom.reportWrite(value, super.momURL, () {
      super.momURL = value;
    });
  }

  late final _$gestationAtom =
      Atom(name: '_EditStoreBase.gestation', context: context);

  @override
  int get gestation {
    _$gestationAtom.reportRead();
    return super.gestation;
  }

  @override
  set gestation(int value) {
    _$gestationAtom.reportWrite(value, super.gestation, () {
      super.gestation = value;
    });
  }

  late final _$idadeCorrigidaAtom =
      Atom(name: '_EditStoreBase.idadeCorrigida', context: context);

  @override
  int? get idadeCorrigida {
    _$idadeCorrigidaAtom.reportRead();
    return super.idadeCorrigida;
  }

  @override
  set idadeCorrigida(int? value) {
    _$idadeCorrigidaAtom.reportWrite(value, super.idadeCorrigida, () {
      super.idadeCorrigida = value;
    });
  }

  late final _$ageAtom = Atom(name: '_EditStoreBase.age', context: context);

  @override
  DateDuration? get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(DateDuration? value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  late final _$ageCalculatorAsyncAction =
      AsyncAction('_EditStoreBase.ageCalculator', context: context);

  @override
  Future<dynamic> ageCalculator() {
    return _$ageCalculatorAsyncAction.run(() => super.ageCalculator());
  }

  late final _$saveDataAsyncAction =
      AsyncAction('_EditStoreBase.saveData', context: context);

  @override
  Future<dynamic> saveData() {
    return _$saveDataAsyncAction.run(() => super.saveData());
  }

  @override
  String toString() {
    return '''
controllerKidName: ${controllerKidName},
controllerKidBirth: ${controllerKidBirth},
controllerWeeks: ${controllerWeeks},
idLogado: ${idLogado},
kidPhoto: ${kidPhoto},
momPhoto: ${momPhoto},
upload: ${upload},
photoURL: ${photoURL},
momURL: ${momURL},
gestation: ${gestation},
idadeCorrigida: ${idadeCorrigida},
age: ${age}
    ''';
  }
}
