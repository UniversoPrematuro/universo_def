// ignore_for_file: prefer_const_constructors, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/home/home_content/components/home_components.dart';
import 'package:universo_def/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter/material.dart';

import '../../initial/auth/auth_store.dart';

class HomeContentPage extends StatefulWidget {
  final String title;
  const HomeContentPage({Key? key, this.title = 'Home'}) : super(key: key);
  @override
  HomeContentPageState createState() => HomeContentPageState();
}

class HomeContentPageState extends State<HomeContentPage> {
  final HomeContentStore store = Modular.get();
  final AuthStore authStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home'),
            centerTitle: true,
            elevation: 0,
            leading: null,
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
                            const Color.fromARGB(255, 255, 192, 143),
                            )),
                    child: Icon(Icons.logout_rounded),
                  ))
            ],
            backgroundColor: const Color.fromARGB(255, 255, 194, 143)),
        body: Container(
          color: const Color.fromARGB(255, 255, 193, 143),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                "Olá ${authStore.controllerNameMom.text}",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))),
                      ),
                      CustomCarouselFB2(),
                      SizedBox(height: 30),
                      GraphHolder(),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                );
              }),
            )
          ]),
        ));
  }
}
