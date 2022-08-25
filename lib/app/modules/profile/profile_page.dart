// ignore_for_file: sized_box_for_whitespace

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/components/profile_components.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'ProfilePage'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final ProfileStore store = Modular.get();
  // final GalleryTabs tab = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
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
                    GalleryTabs(),
                  ]));
                }),
              )
            ],
          ),
        ));
  }
}
