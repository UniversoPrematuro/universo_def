// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;
abstract class _AuthStoreBase with Store {

  @observable
  TextEditingController controllerNameMom = TextEditingController();
  
  @observable
  TextEditingController controllerEmail = TextEditingController();
  
  @observable
  TextEditingController controllerPass = TextEditingController();

}