// ignore: file_names
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part 'photoAlbum_store.g.dart';

class PhotoAlbumStore = _PhotoAlbumStoreBase with _$PhotoAlbumStore;
abstract class _PhotoAlbumStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;


  @observable
  String? idLogado;


  @observable
  bool upload = false;

  @observable
  XFile? photo;

  @observable
  List<String> urlP = [];


  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  List<UploadTask> uploadedTasks = [];

  List<File> selectedFiles = [];

  uploadFileToStorage(File file) {
    User? usuarioLogado = auth.currentUser;
    idLogado = usuarioLogado!.uid;
    UploadTask task = _firebaseStorage
        
        .ref()
        .child("images/${DateTime.now().toString()}")
        .putFile(file);
    return task;
  }

  writeImageUrlToFireStore(imageUrl) {
    _firebaseFirestore.collection("users").doc(idLogado).collection("images").add({"url": imageUrl}).whenComplete(
            () => print("$imageUrl is saved in Firestore"));
  }

  saveImageUrlToFirebase(UploadTask task) {
    task.snapshotEvents.listen((snapShot) {
      if (snapShot.state == TaskState.success) {
        snapShot.ref
            .getDownloadURL()
            .then((imageUrl) => writeImageUrlToFireStore(imageUrl));
      }
    });
  }

  Future selectFileToUpload() async {
    try {
      FilePickerResult? result = await FilePicker.platform
          .pickFiles(allowMultiple: true, type: FileType.image);

      if (result != null) {
        selectedFiles.clear();

        result.files.forEach((selectedFile) {
          File file = File(selectedFile.path!);
          selectedFiles.add(file);
        });

        selectedFiles.forEach((file) {
          final UploadTask task = uploadFileToStorage(file);
          saveImageUrlToFirebase(task);

          
            uploadedTasks.add(task);
          
        });
      } else {
        print("User has cancelled the selection");
      }
    } catch (e) {
      print(e);
    }
  }


  // Future selectPhoto(String origem) async {

  //   final ImagePicker _picker = ImagePicker();
  //   XFile? selectedPhoto;
  //   if(origem == "camera"){
  //     selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
  //     photo = selectedPhoto;
  //     if(photo != null){
  //       uploadPhoto();
  //       upload = true;
  //     }
  //   } else if (origem == "galeria"){
  //       selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
  //       photo = selectedPhoto;
  //       if(photo != null){
  //         uploadPhoto();
  //         upload = true;
  //     }
  //   }
  // }

  // Future uploadPhoto() async {

  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User usuarioLogado = auth.currentUser!;
  //   idLogado = usuarioLogado.uid;
  //   File file = File(photo!.path);
  //   Reference pastaRaiz = storage.ref();
  //   Reference arquivo = pastaRaiz.child("photo-album").child("$idLogado + 1");
  //   UploadTask task = arquivo.putFile(file);
  //   task.snapshotEvents.listen((TaskSnapshot storageEvent) {
  //     if(storageEvent.state == TaskState.running){
  //       upload = true;
  //     } else if (storageEvent.state == TaskState.success){
  //       upload = false;
  //     }
  //    });
  //    task.then((TaskSnapshot taskSnapshot) => recoveryPhotoURL(taskSnapshot));
  //    await Future.delayed(const Duration(seconds: 2));
  // }

  // Future recoveryPhotoURL(TaskSnapshot taskSnapshot) async {
  //   String url = await taskSnapshot.ref.getDownloadURL();
  //   photoURL = url;
  // }

}