
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/alimentos_ini.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/como_preparar.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/congelamento.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/copinho.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/relactacao.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/tip17_page.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/tipos_intro.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/utensilios.dart';
import 'package:universo_def/app/modules/growth/material/tip/tip_store.dart';


import 'pages/cronograma.dart';
import 'pages/divisao.dart';
import 'pages/engasgo.dart';
import 'pages/ordenha.dart';
// import 'pages/prontidao.dart';
import 'pages/tip15_page.dart';
import 'pages/tip16_page.dart';
import 'pages/tip1_page.dart';
import 'pages/tip2_page.dart';
import 'pages/tip3_page.dart';
import 'pages/tip4_page.dart';
import 'pages/tip5_page.dart';
import 'pages/tip6_page.dart';
import 'pages/tip7_page.dart';
import 'pages/tip8_page.dart';
import 'pages/tip9_page.dart';
import 'pages/tip10_page.dart';
import 'pages/tip11_page.dart';
import 'pages/tip12_page.dart';
import 'pages/tip13_page.dart';
import 'pages/tip14_page.dart';
import 'pages/exemplo_pais.dart';
// import 'pages/utensilios.dart';
// import 'pages/tipos_intro.dart';
// import 'pages/como_preparar.dart';
// import 'pages/alimentos_ini.dart';
// import 'pages/congelamento.dart';
import 'pages/reacoes.dart';
import 'pages/proibido1.dart';
import 'pages/proibido2.dart';
import 'tip_page.dart';

class TipModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TipStore()),

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TipPage()),
    ChildRoute('/tip1', child: (_, args) => const Tip1Page()),
    ChildRoute('/tip2', child: (_, args) => const Tip2Page()),
    ChildRoute('/tip3', child: (_, args) => const Tip3Page()),
    ChildRoute('/tip4', child: (_, args) => const Tip4Page()),
    ChildRoute('/tip5', child: (_, args) => const Tip5Page()),
    ChildRoute('/tip6', child: (_, args) => const Tip6Page()),
    ChildRoute('/tip7', child: (_, args) => const Tip7Page()),
    ChildRoute('/tip8', child: (_, args) => const Tip8Page()),
    ChildRoute('/tip9', child: (_, args) => const Tip9Page()),
    ChildRoute('/tip10', child: (_, args) => const Tip10Page()),
    ChildRoute('/tip11', child: (_, args) => const Tip11Page()),
    ChildRoute('/tip12', child: (_, args) => const Tip12Page()),
    ChildRoute('/tip13', child: (_, args) => const Tip13Page()),
    ChildRoute('/tip14', child: (_, args) => const Tip14Page()),
    ChildRoute('/tip15', child: (_, args) => const Tip15Page()),
    ChildRoute('/tip16', child: (_, args) => const Tip16Page()),
    ChildRoute('/tip17', child: (_, args) => const Tip17Page()),
    ChildRoute('/copinho', child: (_, args) =>  const Copinho()),
    ChildRoute('/relactacao', child: (_, args) =>  const Relactacao()),
    ChildRoute('/ordenha', child: (_, args) =>  const Ordenha()),
    // ChildRoute('/prontidao', child: (_, args) =>   Prontidao()),
    ChildRoute('/exemplo', child: (_, args) =>  const ExemploPais()),
    ChildRoute('/utensilios', child: (_, args) =>  const Utensilios()),
    ChildRoute('/tipos', child: (_, args) =>  const TiposIntro()),
    ChildRoute('/comopreparar', child: (_, args) =>  const ComoPreparar()),
    ChildRoute('/divisao', child: (_, args) =>  const Divisao()),
    ChildRoute('/cronograma', child: (_, args) =>  const Cronograma()),
    ChildRoute('/engasgo', child: (_, args) =>  const Engasgo()),
    ChildRoute('/alimentosini', child: (_, args) =>  const AlimentosIni()),
    ChildRoute('/congelamento', child: (_, args) =>  const Congelamento()),
    ChildRoute('/reacoes', child: (_, args) =>  const Reacoes()),
    ChildRoute('/proibido1', child: (_, args) =>  const Proibido1()),
    ChildRoute('/proibido2', child: (_, args) =>  const Proibido2()),
  ];
}
