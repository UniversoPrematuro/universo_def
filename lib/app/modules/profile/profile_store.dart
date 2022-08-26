// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// import '../models/kid_model.dart';
// import '../models/user_model.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;
abstract class _ProfileStoreBase with Store {


  FirebaseFirestore db = FirebaseFirestore.instance;

  FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  String? idLogado;

  @observable
  TabController? tabController;

  @observable
  int selectedIndex = 0;

  
  // recover()  {
  //   User usuarioLogado = auth.currentUser!;
  //   idLogado = usuarioLogado.uid;

  //   db.collection("users").doc(idLogado).get().then((snp) {
  //     if (
  //       snp.exists && 
  //       snp.data()!["kid"] != null &&
  //       snp.data()!["nasc"] != null &&
  //       snp.data()!["weeks"] != null
  //     ){
  //       KidModel kid = KidModel();
  //       UserModel user = UserModel();
  //       kid.kidName = snp.data()!["kidName"];
  //       kid.kidBirth = snp.data()!["kidBirth"];
  //       kid.weeks = snp.data()!["semanas"];
  //       kid.gender = snp.data()!["gender"];
  //       user.name = snp.data()!["mom"];
        
  //     }
  //   });
  // }

  
  
}