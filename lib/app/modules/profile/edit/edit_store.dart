// ignore_for_file: library_private_types_in_public_api, no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:age_calculator/age_calculator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

import '../../initial/auth/auth_store.dart';
import '../../models/kid_model.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;
abstract class _EditStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;

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

  @observable
  int gestation = 40;
  
  @observable
  int? idadeCorrigida;

  @observable
  DateDuration? age;


  
  
  @action
  Future ageCalculator() async {
    List<String> campos = controllerKidBirth.text.split('/');
    int dia = int.parse(campos[0]);
    int mes = int.parse(campos[1]);
    int ano = int.parse(campos[2]);
    DateTime nascimento = DateTime(ano, mes, dia);

    age = AgeCalculator.age(nascimento);
    print(age);
  }

  // trueAge() {

  //   var age = controllerWeeks.text;
  //   List<String> fields = controllerWeeks.text.split('/');
  //   int weeks = int.parse(fields[0]);
  //   int days = int.parse(fields[1]);
  //   idadeCorrigida = weeks  - gestation;
  //   print(idadeCorrigida);
  // }

  @action
  Future saveData() async {
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    KidModel kid = KidModel();

    kid.kidName = controllerKidName.text;
    kid.kidBirth = controllerKidBirth.text;
    kid.weeks = controllerWeeks.text;
    // kid.age = age;
    // kid.gender = 

    Map<String, dynamic> data = {
      "kid": kid.kidName,
      "nasc": kid.kidBirth,
      // "crono": kid.age,
      "semanas": kid.weeks,
      "photoURL": photoURL,
    };
    db.collection("users").doc(idLogado).set(data, SetOptions(merge: true));
  }

  recover() async {
    final AuthStore authStore = Modular.get();
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;

    DocumentSnapshot snapshot = await db.collection("users").doc(idLogado).get();

    // var kidName = controllerKidName.text; 

    Map? dados = snapshot.data() as Map? ;
    controllerKidName.text = dados!["kid"];
    controllerKidBirth.text = dados["nasc"];
    controllerWeeks.text = dados["semanas"];
    authStore.controllerNameMom.text = dados["mom"];
    photoURL = dados["photo"];
    }
  
  Future selectPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;
    if(origem == "camera"){
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
      kidPhoto = selectedPhoto;
      if(kidPhoto != null){
        uploadPhoto();
        upload = true;
      }
    } else if (origem == "galeria"){
        selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
        kidPhoto = selectedPhoto;
        if(kidPhoto != null){
          uploadPhoto();
          upload = true;
      }
    }
  }

  Future selectMomPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;
    if(origem == "camera"){
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
      momPhoto = selectedPhoto;
      if(momPhoto != null){
        uploadMomPhoto();
        upload = true;
      }
    } else if (origem == "galeria"){
        selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
        momPhoto = selectedPhoto;
        if(momPhoto != null){
          uploadMomPhoto();
          upload = true;
      }
    }
  }

  Future uploadMomPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(kidPhoto!.path);
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("$idLogado.jpg");
    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }

  Future uploadPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(kidPhoto!.path);
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("kid.jpg");
    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }

  Future recoveryPhotoURL(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    photoURL = url;
  }
  Future recoveryMomPhotoURL(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    momURL = url;
  }

}