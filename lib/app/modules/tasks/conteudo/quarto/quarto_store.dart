// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'quarto_store.g.dart';

class QuartoStore = _QuartoStoreBase with _$QuartoStore;
abstract class _QuartoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}