import 'package:universo_def/app/modules/news/news_Page.dart';
import 'package:universo_def/app/modules/news/news_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NewsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const NewsPage()),
  ];
}
