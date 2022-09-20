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
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa28_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa29_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa30_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa31_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa32_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa33_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa34_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa35_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/tarefa36_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_store.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa10_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa11_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa12_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa13_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa14_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa15_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa16_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa17_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/tarefas/tarefa18_page.dart';
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
    ChildRoute('/t10', child: (_, args) => const Tarefa10Page()),
    ChildRoute('/t11', child: (_, args) => const Tarefa11Page()),
    ChildRoute('/t12', child: (_, args) => const Tarefa12Page()),
    ChildRoute('/t13', child: (_, args) => const Tarefa13Page()),
    ChildRoute('/t14', child: (_, args) => const Tarefa14Page()),
    ChildRoute('/t15', child: (_, args) => const Tarefa15Page()),
    ChildRoute('/t16', child: (_, args) => const Tarefa16Page()),
    ChildRoute('/t17', child: (_, args) => const Tarefa17Page()),
    ChildRoute('/t18', child: (_, args) => const Tarefa18Page()),
    ChildRoute('/t19', child: (_, args) => const Tarefa19Page()),
    ChildRoute('/t20', child: (_, args) => const Tarefa20Page()),
    ChildRoute('/t21', child: (_, args) => const Tarefa21Page()),
    ChildRoute('/t22', child: (_, args) => const Tarefa22Page()),
    ChildRoute('/t23', child: (_, args) => const Tarefa23Page()),
    ChildRoute('/t24', child: (_, args) => const Tarefa24Page()),
    ChildRoute('/t25', child: (_, args) => const Tarefa25Page()),
    ChildRoute('/t26', child: (_, args) => const Tarefa26Page()),
    ChildRoute('/t27', child: (_, args) => const Tarefa27Page()),
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
