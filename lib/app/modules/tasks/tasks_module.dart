// ignore_for_file: prefer_const_constructors

import 'package:universo_def/app/modules/tasks/tasks_Page.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'conteudo/conteudo_page.dart';
import 'conteudo/primeiro/primeiro_page.dart';
import 'conteudo/primeiro/primeiro_store.dart';
import 'conteudo/primeiro/tarefas/tarefa1_page.dart';
import 'conteudo/quarto/quarto_page.dart';
import 'conteudo/quarto/quarto_store.dart';
import 'conteudo/segundo/segundo_page.dart';
import 'conteudo/segundo/segundo_store.dart';
import 'conteudo/terceiro/terceiro_page.dart';
import 'conteudo/terceiro/terceiro_store.dart';


class TasksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TasksStore()),
    Bind.lazySingleton((i) => PrimeiroStore()),
    Bind.lazySingleton((i) => SegundoStore()),
    Bind.lazySingleton((i) => TerceiroStore()),
    Bind.lazySingleton((i) => QuartoStore()),

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => TasksPage()),
    ChildRoute('/conteudo', child: (_, args) => ConteudoPage()),
    ChildRoute('/primeiro', child: (_, args) => PrimeiroPage()),
    ChildRoute('/segundo', child: (_, args) => SegundoPage()),
    ChildRoute('/terceiro', child: (_, args) => TerceiroPage()),
    ChildRoute('/quarto', child: (_, args) => QuartoPage()),
    ChildRoute('/t1', child: (_, args) => Tarefa1Page()),
  ];
}
