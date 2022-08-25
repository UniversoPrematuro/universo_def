import 'package:universo_def/app/modules/initial/auth/auth_Page.dart';
import 'package:universo_def/app/modules/initial/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../profile/edit/edit_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AuthPage()),
    ChildRoute('/edit', child: (_, args) => const EditPage()),
  ];
}
