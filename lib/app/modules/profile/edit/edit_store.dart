// ignore_for_file: library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, unused_local_variable
// import 'package:universo_def/app/modules/models/result_cep.dart';
import 'package:universo_def/app/modules/services/via_cep_service.dart';
// import 'package:via_cep_flutter/via_cep_flutter.dart';


import 'dart:io';

// import 'package:age_calculator/age_calculator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

import '../../initial/auth/auth_store.dart';
import '../../models/kid_model.dart';
import '../../models/mom_model.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;
abstract class _EditStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;

  FirebaseAuth auth = FirebaseAuth.instance;
  
  var db = FirebaseFirestore.instance;

  KidModel kid = KidModel();

  @observable
  TextEditingController controllerKidName = TextEditingController();

  @action
  changeKidName(String value) => controllerKidName.text = value;



  @action
  validateKidName() {
    kid.kidName = controllerKidName.text;
    if(kid.kidName!.isEmpty){
      return 'Este campo é obrigatorio';
    } else if(kid.kidName!.length < 3) {
      return 'Insira nome e sobrenome';
    }
  }
  

  @observable
  TextEditingController controllerKidBirth = TextEditingController();

  @action
  changeKidBirth(String value) => controllerKidBirth.text = value;

  @action
  validateKidBirth() {
    dataNasc = controllerKidBirth.text;
    List<String> fields = dataNasc.split('/');
    int dia = int.parse(fields[0]);
    int mes = int.parse(fields[1]);
    int ano = int.parse(fields[2]);
    bool valFlag = true;
    if (ano <= 0 || mes < 1  || mes > 12 || dia < 1 || dia > 31){
      valFlag = false;
    } else if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia > 30){
      valFlag = false;
    } else if (mes == 2) { //ano bissexto
      if (ano % 4 == 0){
        if (dia > 29) {
          valFlag = false;
        }
      } else if (dia > 28){
        valFlag = false;
      }
    }
    
  } 

  @observable
  TextEditingController controllerWeeks = TextEditingController();

  // @action


  @observable
  TextEditingController controllerCEP = TextEditingController();

  @observable
  TextEditingController controllerPhone = TextEditingController();




  @observable
  String? idLogado;

  @observable
  String photoURL = '';

  @observable
  String momURL = ''; 
  
  @observable
  String? nameKid;

  @observable
  String? escolhaUser;

  @observable
  String? result;

  @observable
  String dataNasc = '';

  @observable
  bool upload = false;

  @observable
  bool uploadMom = false;

  @observable
  bool loading = false;

  @observable
  bool enableField = true;

  @observable
  XFile? kidPhoto;

  @observable
  XFile? momPhoto;

  @observable
  int? da;

  @observable
  int? ma;

  @observable
  int? aa;

  @observable
  int? id;

  calculoIdadeCrono(){

    var dataAtual = DateTime.now();
    da = dataAtual.day;
    ma = dataAtual.month;
    aa =  dataAtual.year;

    dataNasc = controllerKidBirth.text;
    List<String> fields = dataNasc.split("/");
    int dia = int.parse(fields[0]);
    int mes = int.parse(fields[1]);
    int ano = int.parse(fields[2]);
    id = aa! - ano;
    if(mes > ma! ||( mes == ma && dia > da!)){
      id = (id! - 1);
    }

  }


  @action
  Future saveData() async {
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    nameKid = controllerKidName.text;
    KidModel kid = KidModel();
    

    kid.kidName = controllerKidName.text;
    kid.kidBirth = controllerKidBirth.text;
    kid.weeks = controllerWeeks.text;
    
    
    Map<String, dynamic> data = {
      "kid": kid.kidName,
      "nasc": kid.kidBirth,
      "semanas": kid.weeks,
      "crono": id,
      "gender": escolhaUser,
      "photoURL": photoURL,
      "momURL": momURL,
      "cep": controllerCEP.text,
      "phone": controllerPhone.text,
    };
    db.collection("users").doc(idLogado).set(data, SetOptions(merge: true));
  }
//.set(data, SetOptions(merge: true));
  @action
  Future recover() async {
    final AuthStore authStore = Modular.get();
    User? usuarioLogado = auth.currentUser;
    idLogado = usuarioLogado!.uid;

    DocumentSnapshot snapshot = await db.collection("users").doc(idLogado).get();

    // var kidName = controllerKidName.text; 

    Map? dados = snapshot.data() as Map? ;
    controllerKidName.text = dados!["kid"];
    controllerKidBirth.text = dados["nasc"];
    controllerWeeks.text = dados["semanas"];
    authStore.controllerNameMom.text = dados["mom"];
    escolhaUser = dados["gender"];
    id = dados["crono"];
    controllerCEP.text = dados["cep"];
    controllerPhone.text = dados["phone"];
    if(dados["photoURL"] != null && dados["momURL"] != null){
      photoURL = dados["photoURL"];
      momURL = dados["momURL"];
    }

    
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

  Future selectMomPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;
    if(origem == "camera"){
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
      momPhoto = selectedPhoto;
      if(momPhoto != null){
        uploadMomPhoto();
        uploadMom = true;
      }
    } else if (origem == "galeria"){
        selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
        momPhoto = selectedPhoto;
        if(momPhoto != null){
          uploadMomPhoto();
          uploadMom = true;
      }
    }
  }

  Future uploadMomPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(momPhoto!.path);
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
     task.then((TaskSnapshot taskSnapshot) => recoveryMomPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }
  
  Future recoveryMomPhotoURL(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    momURL = url;
  }

  void searching(bool enable) {
    result = enable ? '' : result;
  }

  Future searchCep() async {
    searching(true);

    // final cep = controllerCEP.text;


    final resultCep = await ViaCepService.fetchCep(cep: controllerCEP.text);
    MomModel mom = MomModel();
    mom.city = resultCep.localidade;
    mom.street = resultCep.logradouro;
    mom.state = resultCep.uf;
    mom.neighborhood = resultCep.bairro;
    mom.ibge = resultCep.ibge;

    Map<String, dynamic> data = {
      "city" : resultCep.localidade,
      "address": resultCep.logradouro,
      "neighborhood": resultCep.bairro,
      "state": resultCep.uf,
      "ibge": resultCep.ibge,
    };

    db.collection("users").doc(idLogado).set(data, SetOptions(merge: true));
    result = resultCep.toJson();
  }



  
  
  




}