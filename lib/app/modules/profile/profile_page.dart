// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/components/profile_components.dart';
import 'package:universo_def/app/modules/profile/photo_album/photoAlbum_store.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

import 'edit/edit_store.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'ProfilePage'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final ProfileStore store = Modular.get();
  final EditStore editStore = Modular.get();
  final PhotoAlbumStore phStore = Modular.get();
  @override
  void initState() {
    // editStore.calculoIdadeCrono();
    editStore.recover();
    // editStore.recoverKid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Perfil'),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    )),
                child: const Icon(Icons.logout_rounded),
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
                return SingleChildScrollView(
                    child: Column(children: [

                    ProfileCard(),

                  const SizedBox(height: 20),

                    GalleryTabs()

                ]));
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            phStore.selectFileToUpload();
          },
          child: const Icon(Icons.camera_alt_outlined)),
    );
  }
}
