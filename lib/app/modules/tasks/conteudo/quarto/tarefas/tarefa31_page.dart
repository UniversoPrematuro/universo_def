import 'package:flutter/material.dart';

class Tarefa31Page extends StatefulWidget {
  final String title;
  const Tarefa31Page({Key? key, this.title = 'Tarefa31Page'}) : super(key: key);
  @override
  Tarefa31PageState createState() => Tarefa31PageState();
}
class Tarefa31PageState extends State<Tarefa31Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}