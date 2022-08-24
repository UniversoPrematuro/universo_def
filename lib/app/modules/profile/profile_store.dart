// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;
abstract class _ProfileStoreBase with Store {

  @observable
  TabController? tabController;

  @observable
  int selectedIndex = 0;

  
}