import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa28_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa29_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa30_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa31_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa32_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa33_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa34_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa35_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa36_page.dart';

class QuartoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => QuartoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const QuartoPage()),
    ChildRoute('/t28', child: (_, args) => const Tarefa28Page()),
    ChildRoute('/t29', child: (_, args) => const Tarefa29Page()),
    ChildRoute('/t30', child: (_, args) => const Tarefa30Page()),
    ChildRoute('/t31', child: (_, args) => const Tarefa31Page()),
    ChildRoute('/t32', child: (_, args) => const Tarefa32Page()),
    ChildRoute('/t33', child: (_, args) => const Tarefa33Page()),
    ChildRoute('/t34', child: (_, args) => const Tarefa34Page()),
    ChildRoute('/t35', child: (_, args) => const Tarefa35Page()),
    ChildRoute('/t36', child: (_, args) => const Tarefa36Page()),
  ];
}
