// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

import '../../models/kid_model.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;
abstract class _EditStoreBase with Store {


  FirebaseAuth auth = FirebaseAuth.instance;
  
  var db = FirebaseFirestore.instance;

  @observable
  TextEditingController controllerKidName = TextEditingController();

  @observable
  TextEditingController controllerKidBirth = TextEditingController();

  @observable
  TextEditingController controllerWeeks = TextEditingController();

  @observable
  String? idLogado;

  @observable
  XFile? kidPhoto;

  @observable
  XFile? momPhoto;

  @observable
  bool upload = false;

  @observable
  String photoURL = '';

  @observable
  String momURL = ''; 

  @action
  Future saveData() async {
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    KidModel kid = KidModel();

    kid.kidName = controllerKidName.text;
    kid.kidBirth = controllerKidBirth.text;
    kid.weeks = controllerWeeks.text;
    // kid.gender = 

    Map<String, dynamic> data = {
      "kid": kid.kidName,
      "nasc": kid.kidBirth,
      "semanas": kid.weeks
    };
    db.collection("users").doc(idLogado).set(data, SetOptions(merge: true));
  }
  

}