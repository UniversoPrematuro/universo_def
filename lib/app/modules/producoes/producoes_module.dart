import 'package:universo_def/app/modules/producoes/producoes_Page.dart';
import 'package:universo_def/app/modules/producoes/producoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProducoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProducoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProducoesPage()),
  ];
}
