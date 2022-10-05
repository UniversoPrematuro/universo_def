import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_page.dart';
import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VideoAlbumModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => VideoAlbumStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => VideoAlbumPage()),
  ];
}
