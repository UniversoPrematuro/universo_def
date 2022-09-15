// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photoAlbum_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PhotoAlbumStore on _PhotoAlbumStoreBase, Store {
  late final _$idLogadoAtom =
      Atom(name: '_PhotoAlbumStoreBase.idLogado', context: context);

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

  late final _$uploadAtom =
      Atom(name: '_PhotoAlbumStoreBase.upload', context: context);

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

  late final _$photoAtom =
      Atom(name: '_PhotoAlbumStoreBase.photo', context: context);

  @override
  XFile? get photo {
    _$photoAtom.reportRead();
    return super.photo;
  }

  @override
  set photo(XFile? value) {
    _$photoAtom.reportWrite(value, super.photo, () {
      super.photo = value;
    });
  }

  late final _$urlPAtom =
      Atom(name: '_PhotoAlbumStoreBase.urlP', context: context);

  @override
  List<String> get urlP {
    _$urlPAtom.reportRead();
    return super.urlP;
  }

  @override
  set urlP(List<String> value) {
    _$urlPAtom.reportWrite(value, super.urlP, () {
      super.urlP = value;
    });
  }

  @override
  String toString() {
    return '''
idLogado: ${idLogado},
upload: ${upload},
photo: ${photo},
urlP: ${urlP}
    ''';
  }
}
