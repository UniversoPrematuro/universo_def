import 'package:mobx/mobx.dart';

part 'error_store.g.dart';

class ErrorStore = _ErrorStoreBase with _$ErrorStore;
abstract class _ErrorStoreBase with Store {

  @observable
  String? email;

  @observable
  String? pass;

  @computed
  bool get hasErrors => email == null || pass == null;

  @action
  void setEmailError(String error) => email = error;

  @action
  void setPassError(String error) => pass = error;

  
}