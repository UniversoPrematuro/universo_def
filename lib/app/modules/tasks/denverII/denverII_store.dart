import 'package:mobx/mobx.dart';

part 'denverII_store.g.dart';

class DenverIIStore = _DenverIIStoreBase with _$DenverIIStore;
abstract class _DenverIIStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}