// ignore_for_file: file_names

import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_page.dart';
import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PhotoAlbumModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PhotoAlbumStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PhotoAlbumPage()),
  ];
}
