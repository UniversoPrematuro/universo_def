// ignore_for_file: prefer_const_constructors

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/home/home_content/components/home_components.dart';
import 'package:universo_def/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter/material.dart';

class HomeContentPage extends StatefulWidget {
  final String title;
  const HomeContentPage({Key? key, this.title = 'HomeContentPage'}) : super(key: key);
  @override
  HomeContentPageState createState() => HomeContentPageState();
}
class HomeContentPageState extends State<HomeContentPage> {
  final HomeContentStore store = Modular.get();

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
        child: Column(children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children:  <Widget> [
                      Text("Olá mamãe!"),
                      const CustomCarouselFB2(),
                      SizedBox(height: 30),
                      GraphHolder(),
                      SizedBox(height: 100,)
                    ],
                  ),
                );
              }
            ),
          )
        ]),
      )
    );
  }
}