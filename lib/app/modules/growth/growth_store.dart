import 'package:mobx/mobx.dart';

part 'growth_store.g.dart';

class GrowthStore = _GrowthStoreBase with _$GrowthStore;
abstract class _GrowthStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}