import 'package:mobx/mobx.dart';

part 'denverII_store.g.dart';

class DenverIIStore = _DenverIIStoreBase with _$DenverIIStore;
abstract class _DenverIIStoreBase with Store {

  @observable
  int? page;

  @observable
  int? fase;

  @observable
  Map? answers;

  
}