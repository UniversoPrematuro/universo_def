import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;
abstract class _EditStoreBase with Store {

  @observable
  TextEditingController controllerKidName = TextEditingController();

  @observable
  TextEditingController controllerBirth = TextEditingController();

  @observable
  TextEditingController controllerWeeks = TextEditingController();

  @observable
  TextEditingController controllerDays = TextEditingController();

  @observable
  TextEditingController controllerMomName = TextEditingController();

  @observable
  TextEditingController controllerBirthMom = TextEditingController();
}