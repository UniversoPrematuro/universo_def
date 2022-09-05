import 'package:universo_def/app/modules/growth/growth_Page.dart';
import 'package:universo_def/app/modules/growth/growth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

// import 'material/tip/pages/copinho.dart';
import 'material/tip/pages/copinho.dart';
// import 'material/tip/pages/prontidao.dart';

class GrowthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GrowthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const GrowthPage()),
    ChildRoute('/copinho', child: (_, args) => const Copinho()),
    ];
}
