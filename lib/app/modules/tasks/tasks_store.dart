import 'package:mobx/mobx.dart';

part 'tasks_store.g.dart';

class TasksStore = _TasksStoreBase with _$TasksStore;
abstract class _TasksStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}