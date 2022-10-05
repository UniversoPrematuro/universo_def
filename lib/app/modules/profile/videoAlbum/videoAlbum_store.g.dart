// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videoAlbum_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VideoAlbumStore on _VideoAlbumStoreBase, Store {
  late final _$uploadedTasksAtom =
      Atom(name: '_VideoAlbumStoreBase.uploadedTasks', context: context);

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
      Atom(name: '_VideoAlbumStoreBase.selectedFiles', context: context);

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
      Atom(name: '_VideoAlbumStoreBase.idLogado', context: context);

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

  late final _$recoverVideosAsyncAction =
      AsyncAction('_VideoAlbumStoreBase.recoverVideos', context: context);

  @override
  Future<dynamic> recoverVideos() {
    return _$recoverVideosAsyncAction.run(() => super.recoverVideos());
  }

  late final _$selectFileAsyncAction =
      AsyncAction('_VideoAlbumStoreBase.selectFile', context: context);

  @override
  Future<dynamic> selectFile() {
    return _$selectFileAsyncAction.run(() => super.selectFile());
  }

  late final _$_VideoAlbumStoreBaseActionController =
      ActionController(name: '_VideoAlbumStoreBase', context: context);

  @override
  dynamic uploadFiles(File file) {
    final _$actionInfo = _$_VideoAlbumStoreBaseActionController.startAction(
        name: '_VideoAlbumStoreBase.uploadFiles');
    try {
      return super.uploadFiles(file);
    } finally {
      _$_VideoAlbumStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic saveImageUrlDB(UploadTask task) {
    final _$actionInfo = _$_VideoAlbumStoreBaseActionController.startAction(
        name: '_VideoAlbumStoreBase.saveImageUrlDB');
    try {
      return super.saveImageUrlDB(task);
    } finally {
      _$_VideoAlbumStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic writeImageToFireStore(dynamic videoUrl) {
    final _$actionInfo = _$_VideoAlbumStoreBaseActionController.startAction(
        name: '_VideoAlbumStoreBase.writeImageToFireStore');
    try {
      return super.writeImageToFireStore(videoUrl);
    } finally {
      _$_VideoAlbumStoreBaseActionController.endAction(_$actionInfo);
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
