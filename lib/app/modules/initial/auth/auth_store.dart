// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../models/user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;
abstract class _AuthStoreBase with Store {

  

  var db = FirebaseFirestore.instance;

  @observable
  String? idLogado;

  @observable
  TextEditingController controllerNameMom = TextEditingController();
  
  @observable
  TextEditingController controllerEmail = TextEditingController();
  
  @observable
  TextEditingController controllerPass = TextEditingController();

  @action
  register(UserModel user) {
    FirebaseAuth auth = FirebaseAuth.instance;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    user.name = controllerNameMom.text;

    auth.createUserWithEmailAndPassword(email: user.email!, password: user.pass!).then((firebaseUser){
      save();
      Modular.to.pushNamed("/home");

    }).catchError((e) {
      e = "Erro ao cadastrar usuario.";
      return e;
    });
  }

  @action
  Future save() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    UserModel user = UserModel();
    idLogado = usuarioLogado.uid;

    user.name = controllerNameMom.text;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;

    Map<String, dynamic> data = {
      "mom": user.name,
      "email": user.email,
      "pass": user.pass
    };

    db.collection("users").doc(idLogado).set(data);
  }

}