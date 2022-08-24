// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStoreBase with _$NewsStore;
abstract class _NewsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}