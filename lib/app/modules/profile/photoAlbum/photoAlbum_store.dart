import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
// import 'package:file_picker/file_picker.dart';

part 'photoAlbum_store.g.dart';

class PhotoAlbumStore = _PhotoAlbumStoreBase with _$PhotoAlbumStore;
abstract class _PhotoAlbumStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;


  @observable
  List<UploadTask> uploadedTasks = [];

  @observable
  List<File> selectedFiles = [];

  @observable
  String? idLogado;

  @action
  uploadFiles(File file) { 
    UploadTask task = storage
      .ref()
      .child("images/${DateTime.now().toString()}")
      .putFile(file);
    return task;
  }

  @action
  Future selectFile() async {
    // ImagePicker picker = ImagePicker();
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true, type: FileType.image);

      if(result != null) {
        selectedFiles.clear();
        for (var selectedFile in result.files) {
          File file = File(selectedFile.path!);
          selectedFiles.add(file);
        }

        for (var file in selectedFiles) { 
          final UploadTask task = uploadFiles(file);
          saveImageUrlDB(task);
          uploadedTasks.add(task);
        }
      } else {
        print("Usuario cancelou");
      }
    } catch (e) {
      print(e);
    }
  }
   

  @action
  saveImageUrlDB(UploadTask task) {
    task.snapshotEvents.listen((snapShot) {
      if(snapShot.state == TaskState.success) {
        snapShot.ref.getDownloadURL().then((imageUrl) => writeImageToFireStore(imageUrl));
      }
    });
  }

  @action
  writeImageToFireStore(imageUrl) {
    db.collection("users").doc(idLogado).collection("images").add({"url": imageUrl}).whenComplete(() => print("$imageUrl is save"));
  }

  


}