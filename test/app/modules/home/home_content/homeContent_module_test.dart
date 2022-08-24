// ignore_for_file: file_names

import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/home/home_content/homeContent_module.dart';
 
void main() {

  setUpAll(() {
    initModule(HomeContentModule());
  });
}