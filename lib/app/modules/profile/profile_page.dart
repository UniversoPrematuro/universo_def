// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/components/profile_components.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/profile/videoAlbum/videoAlbum_store.dart';

import 'edit/edit_store.dart';
import 'photoAlbum/photoAlbum_store.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'ProfilePage'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  final ProfileStore store = Modular.get();
  final EditStore editStore = Modular.get();
  final PhotoAlbumStore phStore = Modular.get();
  final VideoAlbumStore vStore = Modular.get();

  bool isOpened = false;
  late AnimationController _animationController;
  late Animation? _buttonColor;
  late Animation<double> _animationIcon;
  late Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });

    _animationIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(begin: Colors.blue, end: Colors.red).animate(
            CurvedAnimation(
                parent: _animationController,
                curve: Interval(0.00, 1.00, curve: Curves.linear)));
        

    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController, curve: Interval(0.0, 0.75, curve: _curve)));
    editStore.recover();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget buttonPhoto() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          phStore.selectFile();
        },
        tooltip: "add",
        child: Icon(Icons.photo_camera),
      ),
    );
  }
  Widget buttonVideo() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          vStore.selectFile();
        },
        tooltip: "add",
        child: Icon(Icons.video_camera_back_outlined),
      ),
    );
  }
  
  Widget buttonToggle() {
    return Container(
      child: FloatingActionButton(
        onPressed: animate,
        tooltip: "add",
        child: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: _animationIcon),
      ),
    );
  }

  void animate() {
   if(!isOpened)
    _animationController.forward();
   else
    _animationController.reverse();
  isOpened = !isOpened;

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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 2.0, 0.0),
              child: buttonPhoto(),
            ),
            // SizedBox(height: 10),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, _translateButton.value * 1.0, 0.0),
              child: buttonVideo(),
            ),
            // SizedBox(height: 10),
            

            buttonToggle()
            
          ],
        ));
  }
}
