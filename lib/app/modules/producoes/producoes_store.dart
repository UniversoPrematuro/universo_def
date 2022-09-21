// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'producoes_store.g.dart';

class ProducoesStore = _ProducoesStoreBase with _$ProducoesStore;
abstract class _ProducoesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}