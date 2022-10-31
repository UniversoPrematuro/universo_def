// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'segundo_store.g.dart';

class SegundoStore = _SegundoStoreBase with _$SegundoStore;
abstract class _SegundoStoreBase with Store {

  @observable
  String? uid;

  
}