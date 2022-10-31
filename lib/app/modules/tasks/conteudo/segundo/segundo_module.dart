import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/denver/avaliacao_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa10_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa11_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa12_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa13_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa14_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa15_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa16_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa17_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa18_page.dart';

class SegundoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SegundoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SegundoPage()),
    ChildRoute('/t10', child: (_, args) => const Tarefa10Page()),
    ChildRoute('/t11', child: (_, args) => const Tarefa11Page()),
    ChildRoute('/t12', child: (_, args) => const Tarefa12Page()),
    ChildRoute('/t13', child: (_, args) => const Tarefa13Page()),
    ChildRoute('/t14', child: (_, args) => const Tarefa14Page()),
    ChildRoute('/t15', child: (_, args) => const Tarefa15Page()),
    ChildRoute('/t16', child: (_, args) => const Tarefa16Page()),
    ChildRoute('/t17', child: (_, args) => const Tarefa17Page()),
    ChildRoute('/t18', child: (_, args) => const Tarefa18Page()),
    ChildRoute('/av', child: (_, args) => const AvaliacaoPage()),
  ];
}
