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