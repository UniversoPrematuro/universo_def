import 'package:universo_def/app/modules/initial/error_store.dart';
import 'package:universo_def/app/modules/initial/initial_Page.dart';
import 'package:universo_def/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ErrorStore()),
    Bind.lazySingleton((i) => InitialStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const InitialPage()),
  ];
}
