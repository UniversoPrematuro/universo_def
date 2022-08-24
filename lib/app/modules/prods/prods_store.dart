// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'prods_store.g.dart';

class ProdsStore = _ProdsStoreBase with _$ProdsStore;
abstract class _ProdsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}