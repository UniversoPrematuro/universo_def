// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photoAlbum_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PhotoAlbumStore on _PhotoAlbumStoreBase, Store {
  late final _$uploadedTasksAtom =
      Atom(name: '_PhotoAlbumStoreBase.uploadedTasks', context: context);

  @override
  List<UploadTask> get uploadedTasks {
    _$uploadedTasksAtom.reportRead();
    return super.uploadedTasks;
  }

  @override
  set uploadedTasks(List<UploadTask> value) {
    _$uploadedTasksAtom.reportWrite(value, super.uploadedTasks, () {
      super.uploadedTasks = value;
    });
  }

  late final _$selectedFilesAtom =
      Atom(name: '_PhotoAlbumStoreBase.selectedFiles', context: context);

  @override
  List<File> get selectedFiles {
    _$selectedFilesAtom.reportRead();
    return super.selectedFiles;
  }

  @override
  set selectedFiles(List<File> value) {
    _$selectedFilesAtom.reportWrite(value, super.selectedFiles, () {
      super.selectedFiles = value;
    });
  }

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

  late final _$selectFileAsyncAction =
      AsyncAction('_PhotoAlbumStoreBase.selectFile', context: context);

  @override
  Future<dynamic> selectFile() {
    return _$selectFileAsyncAction.run(() => super.selectFile());
  }

  late final _$_PhotoAlbumStoreBaseActionController =
      ActionController(name: '_PhotoAlbumStoreBase', context: context);

  @override
  dynamic uploadFiles(File file) {
    final _$actionInfo = _$_PhotoAlbumStoreBaseActionController.startAction(
        name: '_PhotoAlbumStoreBase.uploadFiles');
    try {
      return super.uploadFiles(file);
    } finally {
      _$_PhotoAlbumStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic saveImageUrlDB(UploadTask task) {
    final _$actionInfo = _$_PhotoAlbumStoreBaseActionController.startAction(
        name: '_PhotoAlbumStoreBase.saveImageUrlDB');
    try {
      return super.saveImageUrlDB(task);
    } finally {
      _$_PhotoAlbumStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic writeImageToFireStore(dynamic imageUrl) {
    final _$actionInfo = _$_PhotoAlbumStoreBaseActionController.startAction(
        name: '_PhotoAlbumStoreBase.writeImageToFireStore');
    try {
      return super.writeImageToFireStore(imageUrl);
    } finally {
      _$_PhotoAlbumStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
uploadedTasks: ${uploadedTasks},
selectedFiles: ${selectedFiles},
idLogado: ${idLogado}
    ''';
  }
}
