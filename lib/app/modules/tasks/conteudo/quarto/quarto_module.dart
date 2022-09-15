import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuartoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => QuartoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => QuartoPage()),
  ];
}
