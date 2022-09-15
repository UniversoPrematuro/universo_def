// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'terceiro_store.g.dart';

class TerceiroStore = _TerceiroStoreBase with _$TerceiroStore;
abstract class _TerceiroStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}