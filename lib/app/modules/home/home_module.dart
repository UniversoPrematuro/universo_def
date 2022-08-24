import 'package:universo_def/app/modules/home/home_Page.dart';
import 'package:universo_def/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_content/homeContent_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => HomeContentStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
    // ChildRoute('/home', child: (_, args) => HomeContentPage()),
  ];
}
