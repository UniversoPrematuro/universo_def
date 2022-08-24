// ignore_for_file: file_names

import 'package:universo_def/app/modules/home/home_content/homeContent_page.dart';
import 'package:universo_def/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeContentModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeContentStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomeContentPage()),
  ];
}
