import 'package:universo_def/app/modules/prods/prods_Page.dart';
import 'package:universo_def/app/modules/prods/prods_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ProdsPage()),
  ];
}
