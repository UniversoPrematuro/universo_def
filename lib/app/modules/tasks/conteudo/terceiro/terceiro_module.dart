import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa19_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa20_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa21_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa22_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa23_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa24_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa25_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa26_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/tarefa27_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TerceiroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TerceiroStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TerceiroPage()),
    ChildRoute('/t19', child: (_, args) => const Tarefa19Page()),
    ChildRoute('/t20', child: (_, args) => const Tarefa20Page()),
    ChildRoute('/t21', child: (_, args) => const Tarefa21Page()),
    ChildRoute('/t22', child: (_, args) => const Tarefa22Page()),
    ChildRoute('/t23', child: (_, args) => const Tarefa23Page()),
    ChildRoute('/t24', child: (_, args) => const Tarefa24Page()),
    ChildRoute('/t25', child: (_, args) => const Tarefa25Page()),
    ChildRoute('/t26', child: (_, args) => const Tarefa26Page()),
    ChildRoute('/t27', child: (_, args) => const Tarefa27Page()),
  ];
}
