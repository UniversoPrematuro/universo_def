import 'package:flutter_modular/flutter_modular.dart';

import 'modules/growth/growth_module.dart';
import 'modules/growth/growth_store.dart';
import 'modules/home/home_module.dart';
import 'modules/home/home_store.dart';
import 'modules/initial/auth/auth_module.dart';
import 'modules/initial/auth/auth_store.dart';
import 'modules/initial/initial_module.dart';
import 'modules/profile/edit/edit_module.dart';
import 'modules/profile/edit/edit_store.dart';
import 'modules/profile/profile_module.dart';
import 'modules/profile/profile_store.dart';
import 'modules/tasks/tasks_module.dart';
import 'modules/tasks/tasks_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => EditStore()),
    Bind.lazySingleton((i) => TasksStore()),
    Bind.lazySingleton((i) => GrowthStore()),
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
  ];

}