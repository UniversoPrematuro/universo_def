import 'package:universo_def/app/modules/profile/profile_Page.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_page.dart';
import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_store.dart';

import 'photoAlbum/photoAlbum_page.dart';
import 'photoAlbum/photoAlbum_store.dart';



class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.singleton((i) => PhotoAlbumStore()),
    Bind.singleton((i) => VideoAlbumStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ProfilePage()),
    ChildRoute('/photo', child: (_, args) => const PhotoAlbumPage()),
    ChildRoute('/video', child: (_, args) => const VideoAlbumPage()),
  ];
}
