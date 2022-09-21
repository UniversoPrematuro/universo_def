// ignore_for_file: avoid_print, unnecessary_null_comparison, avoid_function_literals_in_foreach_calls

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/user_model.dart';
import '../profile/edit/edit_store.dart';

part 'initial_store.g.dart';

// ignore: library_private_types_in_public_api
class InitialStore = _InitialStoreBase with _$InitialStore;
abstract class _InitialStoreBase with Store {

  FirebaseAuth auth = FirebaseAuth.instance;

  EditStore editStore = Modular.get();


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

  @observable
  String? email;

  @observable
  String? pass;

  // @action
  // changeEmail(String email) => controllerEmail.text = email;

  // @action
  // changePass(String pass) => controllerPass.text = pass;

  // UserModel user = UserModel();

  // @observable
  // int delay = 650;
  
  

  // @action
  // String? validateEmail(String email) {
    
  //   email = controllerEmail.text.toString();
  //   if (email.isEmpty) {
  //     return 'O campo é obrigatorio';
  //   } else if (!email.contains("@")) {
  //     return 'Insira um e-mail válido!';
  //   }
  //   return null;
  // }

  // ErrorStore errorStore = Modular.get();
  // late List<ReactionDisposer> _disposers;

  // void initReactions() {
  //   _disposers = [
  //     reaction((_) => email,
  //           (email) => errorStore.setEmailError(validateEmail(email as String)!),
  //           delay: delay),
  //     reaction((_) => pass, (pass) => errorStore.setPassError(validatePass()!))
  //   ];
  // }

  // void disposeReactions() => _disposers.forEach((dispose) => dispose());


  // void submit(void Function() submitCallback) {
  //   // errorStore.setNameError(validateName(name));
  //   errorStore.setEmailError(validateEmail(email as String)!);
  //   errorStore.setPassError(validatePass()!);
    

  //   if (!errorStore.hasErrors) {
  //     submitCallback();
  //   }
  // }
  // // void initReactions() {

  // //     reaction(
  // //         (_) => email, (email) => errorStore.setNameError(validateName(name)),
  // //         delay: delay);
  // //     reaction((_) => email,
  // //         (email) => errorStore.setEmailError(validateEmail(email)),
  // //         delay: delay),
  // //     reaction((_) => password, passwordReaction, delay: delay),
  // //     reaction(
  // //         (_) => confirmedPassword,
  // //         (confirmedPassword) => errorStore.setConfirmedPasswordError(
  // //             validateConfirmedPassword(confirmedPassword)),
  // //         delay: delay)

  // // }


  

  // @action
  // String? validatePass() {
  //   // var user = UserModel();
  //   user.pass = controllerPass.text;
  //   if (user.pass!.isEmpty) {
  //     return 'O campo é obrigatorio';
  //   } else if (user.pass!.length < 5) {
  //     return 'A senha precisa ter mais de 5 caracteres';

  //   }
  //   return null;
  // }


  

  @action
  Future<void> signIn(UserModel user) async {
    loading = true;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() async {
      try{
        await auth.signInWithEmailAndPassword(email: user.email!, password: user.pass!).then((firebaseUser)async{
          if(usuarioLogado == auth.currentUser) loading = false;
          await Future.delayed(const Duration(seconds: 3), (){
            Modular.to.pushReplacementNamed("/home/");
            editStore.recover();
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
        
      }
    });
  }


}

