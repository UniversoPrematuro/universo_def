import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa1_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa2_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa3_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa4_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa5_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa6_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa7_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa8_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa9_page.dart';
import 'package:universo_def/app/modules/tasks/denverII.dart';

class PrimeiroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PrimeiroStore()),
    Bind.singleton((i) => const Tarefa1Page() ),
    Bind.singleton((i) => const Tarefa2Page() ),
    Bind.singleton((i) => const Tarefa3Page() ),
    Bind.singleton((i) => const Tarefa4Page() ),
    Bind.singleton((i) => const Tarefa5Page() ),
    Bind.singleton((i) => const Tarefa6Page() ),
    Bind.singleton((i) => const Tarefa7Page() ),
    Bind.singleton((i) => const Tarefa8Page() ),
    Bind.singleton((i) => const Tarefa9Page() ),
    Bind.singleton((i) => DenverII() ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PrimeiroPage()),
    ChildRoute('/t1', child: (_, args) => const Tarefa1Page()),
    ChildRoute('/t2', child: (_, args) => const Tarefa2Page()),
    ChildRoute('/t3', child: (_, args) => const Tarefa3Page()),
    ChildRoute('/t4', child: (_, args) => const Tarefa4Page()),
    ChildRoute('/t5', child: (_, args) => const Tarefa5Page()),
    ChildRoute('/t6', child: (_, args) => const Tarefa6Page()),
    ChildRoute('/t7', child: (_, args) => const Tarefa7Page()),
    ChildRoute('/t8', child: (_, args) => const Tarefa8Page()),
    ChildRoute('/t9', child: (_, args) => const Tarefa9Page()),
    ChildRoute('/denver', child: (_, args) => DenverII()),
    // ChildRoute('/t9', child: (_, args) => AvaliacaoPage()),
  ];
}
