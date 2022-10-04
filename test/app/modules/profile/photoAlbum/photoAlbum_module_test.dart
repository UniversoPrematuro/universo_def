// ignore_for_file: unused_import, file_names

import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_module.dart';
 
void main() {

  setUpAll(() {
    initModule(PhotoAlbumModule());
  });
}