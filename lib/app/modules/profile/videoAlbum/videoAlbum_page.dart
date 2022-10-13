import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_store.dart';
import 'package:flutter/material.dart';

class VideoAlbumPage extends StatefulWidget {
  final String title;
  const VideoAlbumPage({Key? key, this.title = 'VideoAlbumPage'}) : super(key: key);
  @override
  VideoAlbumPageState createState() => VideoAlbumPageState();
}
class VideoAlbumPageState extends State<VideoAlbumPage> {
  final VideoAlbumStore store = Modular.get();
  FirebaseFirestore db = FirebaseFirestore.instance;
  // final auth = FirebaseAuth.instance;
  // String idLogado = FirebaseAuth.instance.currentUser!.uid;
  @override
  void initState() {
    store.recoverVideos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.all(8),
            child: StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").doc(store.idLogado).collection("video").snapshots(),
                builder: (context, snapshots) {
                  return snapshots.hasError
                      ? const Center(child: Text("error"))
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