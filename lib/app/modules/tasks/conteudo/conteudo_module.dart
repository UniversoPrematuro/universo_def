import 'package:universo_def/app/modules/tasks/conteudo/conteudo_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/conteudo_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa1_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa2_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa3_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa4_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa5_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa6_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa7_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa8_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa9_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_store.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_store.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_store.dart';

class ConteudoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ConteudoStore()),
    Bind.lazySingleton((i) => PrimeiroStore()),
    Bind.lazySingleton((i) => SegundoStore()),
    Bind.lazySingleton((i) => TerceiroStore()),
    Bind.lazySingleton((i) => QuartoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ConteudoPage()),
    ChildRoute('/primeiro', child: (_, args) => const PrimeiroPage()),
    ChildRoute('/segundo', child: (_, args) => const SegundoPage()),
    ChildRoute('/terceiro', child: (_, args) => const TerceiroPage()),
    ChildRoute('/quarto', child: (_, args) => const QuartoPage()),
    ChildRoute('/t1', child: (_, args) => const Tarefa1Page()),
    ChildRoute('/t2', child: (_, args) => const Tarefa2Page()),
    ChildRoute('/t3', child: (_, args) => const Tarefa3Page()),
    ChildRoute('/t4', child: (_, args) => const Tarefa4Page()),
    ChildRoute('/t5', child: (_, args) => const Tarefa5Page()),
    ChildRoute('/t6', child: (_, args) => const Tarefa6Page()),
    ChildRoute('/t7', child: (_, args) => const Tarefa7Page()),
    ChildRoute('/t8', child: (_, args) => const Tarefa8Page()),
    ChildRoute('/t9', child: (_, args) => const Tarefa9Page()),
  ];
}
