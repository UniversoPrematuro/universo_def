// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'projeto_store.g.dart';

class ProjetoStore = _ProjetoStoreBase with _$ProjetoStore;
abstract class _ProjetoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}