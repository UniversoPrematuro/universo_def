import 'package:flutter_modular/flutter_modular.dart';

import 'modules/cartilha/cartilha_module.dart';
import 'modules/growth/growth_module.dart';
import 'modules/growth/growth_store.dart';
import 'modules/growth/material/tip/tip_module.dart';
import 'modules/growth/material/tip/tip_store.dart';
import 'modules/home/home_module.dart';
import 'modules/home/home_store.dart';
import 'modules/initial/auth/auth_module.dart';
import 'modules/initial/auth/auth_store.dart';
import 'modules/initial/error_store.dart';
import 'modules/initial/initial_module.dart';
import 'modules/noticias/noticias_module.dart';
import 'modules/producoes/producoes_module.dart';
import 'modules/profile/edit/edit_module.dart';
import 'modules/profile/edit/edit_store.dart';
import 'modules/profile/photoAlbum/photoAlbum_module.dart';
import 'modules/profile/photoAlbum/photoAlbum_store.dart';
import 'modules/profile/profile_module.dart';
import 'modules/profile/profile_store.dart';
import 'modules/projeto/projeto_module.dart';
import 'modules/tasks/conteudo/conteudo_module.dart';
import 'modules/tasks/conteudo/primeiro/primeiro_store.dart';
import 'modules/tasks/conteudo/quarto/quarto_module.dart';
import 'modules/tasks/conteudo/quarto/quarto_store.dart';
import 'modules/tasks/conteudo/segundo/segundo_module.dart';
import 'modules/tasks/conteudo/segundo/segundo_store.dart';
import 'modules/tasks/conteudo/terceiro/terceiro_module.dart';
import 'modules/tasks/conteudo/terceiro/terceiro_store.dart';
import 'modules/tasks/tasks_module.dart';
import 'modules/tasks/tasks_store.dart';
import 'modules/tasks/conteudo/primeiro/primeiro_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
    Bind.singleton((i) => HomeStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.singleton((i) => EditStore()),
    Bind.lazySingleton((i) => TasksStore()),
    Bind.lazySingleton((i) => GrowthStore()),
    Bind.lazySingleton((i) => TipStore()),
    Bind.singleton((i) => ErrorStore()),
    Bind.lazySingleton((i) => PrimeiroStore()),
    Bind.lazySingleton((i) => SegundoStore()),
    Bind.lazySingleton((i) => TerceiroStore()),
    Bind.lazySingleton((i) => QuartoStore()),
    Bind.singleton((i) => PhotoAlbumStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/edit', module: EditModule()),
    ModuleRoute('/tasks', module: TasksModule()),
    ModuleRoute('/growth', module: GrowthModule()),
    ModuleRoute('/tip', module: TipModule()),
    ModuleRoute('/cartilha', module: CartilhaModule()),
    ModuleRoute('/noticias', module: NoticiasModule()),
    ModuleRoute('/projeto', module: ProjetoModule()),
    ModuleRoute('/producoes', module: ProducoesModule()),
    ModuleRoute('/conteudo', module: ConteudoModule()),
    ModuleRoute('/primero', module: PrimeiroModule()),
    ModuleRoute('/segundo', module: SegundoModule()),
    ModuleRoute('/terceiro', module: TerceiroModule()),
    ModuleRoute('/quarto', module: QuartoModule()),
    ModuleRoute('/photo', module: PhotoAlbumModule()),
  ];

}