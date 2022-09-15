import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/photo_album/photoAlbum_store.dart';
import 'package:flutter/material.dart';

class PhotoAlbumPage extends StatefulWidget {
  final String title;
  const PhotoAlbumPage({Key? key, this.title = 'PhotoAlbumPage'})
      : super(key: key);
  @override
  PhotoAlbumPageState createState() => PhotoAlbumPageState();
}

class PhotoAlbumPageState extends State<PhotoAlbumPage> {
   FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: StreamBuilder<QuerySnapshot>(
          stream: _firebaseFirestore.collection("images").snapshots(),
          builder: (context, snapshot) {
            return snapshot.hasError ? const Center(
              child: Text("There is some problem loading your images"),) :
            snapshot.hasData ? 
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 10,
              children: 
              snapshot.data!.docs.map((e) => Image.network(e.get("url"))).toList(),
            ) : Container();
          },
        ),
      ),

    );
  }
}
