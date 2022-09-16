import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_store.dart';
import 'package:flutter/material.dart';

class PhotoAlbumPage extends StatefulWidget {
  final String title;
  const PhotoAlbumPage({Key? key, this.title = 'PhotoAlbumPage'})
      : super(key: key);
  @override
  PhotoAlbumPageState createState() => PhotoAlbumPageState();
}

class PhotoAlbumPageState extends State<PhotoAlbumPage> {
  final PhotoAlbumStore store = Modular.get();
  FirebaseFirestore db = FirebaseFirestore.instance;
  // final auth = FirebaseAuth.instance;
  // String idLogado = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.all(8),
            child: StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").doc(store.idLogado).collection("images").snapshots(),
                builder: (context, snapshots) {
                  return snapshots.hasError
                      ? Center(child: Text("error"))
                      : snapshots.hasData
                          ? GridView.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1,
                              children: snapshots.data!.docs
                                  .map((e) => Image.network(e.get("url")))
                                  .toList(),
                            )
                          : Container();
                }))
       
    );
  }
}
