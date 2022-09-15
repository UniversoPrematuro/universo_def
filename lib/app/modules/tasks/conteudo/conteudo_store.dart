// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'conteudo_store.g.dart';

class ConteudoStore = _ConteudoStoreBase with _$ConteudoStore;
abstract class _ConteudoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}