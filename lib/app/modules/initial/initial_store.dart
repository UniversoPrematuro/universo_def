// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/user_model.dart';

part 'initial_store.g.dart';

// ignore: library_private_types_in_public_api
class InitialStore = _InitialStoreBase with _$InitialStore;
abstract class _InitialStoreBase with Store {

  FirebaseAuth auth = FirebaseAuth.instance;

  // var db = FirebaseFirestore.instance;

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass =  TextEditingController();
  

  @observable
  String? idLogado;

  @observable
  String? erro;

  @observable
  bool loading = false;

  @action
  signIn(UserModel user) async {
    loading = true;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    await Future.delayed(const Duration(seconds: 5)).whenComplete(() async {
      try{
        await auth.signInWithEmailAndPassword(email: user.email!, password: user.pass!).then((firebaseUser)async{
          if(usuarioLogado == auth.currentUser) loading = false;
          await Future.delayed(const Duration(seconds: 3), (){
            Modular.to.pushReplacementNamed("/home/");
          });
        } );
      }on FirebaseAuthException catch (e) {
        loading = false;
        switch (e.code) {
          case "invalid-email":
            erro = "E-mail inválido, por favor verifique.";
            break;
          case "wrong-password":
            erro = "Senha incorreta.";
            break;
          case "user-not-found":
            erro = "E-mail não cadastrado";
            break;
          case "user-disabled":
            erro = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            erro = "Too many requests. Try again later.";
            break;
          case "operation-not-allowed":
            erro = "Signing in with Email and Password is not enabled.";
            break;
          default:
            erro = "An undefined Error happened.";
        }
        print(erro);
      }
    });
  }


}