import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/projeto/projeto_module.dart';
 
void main() {

  setUpAll(() {
    initModule(ProjetoModule());
  });
}