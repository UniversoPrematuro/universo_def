import 'package:mobx/mobx.dart';

part 'homeContent_store.g.dart';

class HomeContentStore = _HomeContentStoreBase with _$HomeContentStore;
abstract class _HomeContentStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}