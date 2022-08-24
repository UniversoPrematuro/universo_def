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
  final GalleryTabs tab = Modular.get();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          ProfileCard(),
                          const SizedBox(height: 20),
                          GalleryTabs(),
                          Container(
                  height: MediaQuery.of(context).size.height *.543,
                  child: TabBarView(
                    children: [
                      GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                          
                          
                        ],
                      )
                )]));
                  }
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}