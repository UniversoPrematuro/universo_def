import 'package:flutter/material.dart';

class Tarefa7Page extends StatefulWidget {
  final String title;
  const Tarefa7Page({Key? key, this.title = 'Tarefa7Page'}) : super(key: key);
  @override
  Tarefa7PageState createState() => Tarefa7PageState();
}
class Tarefa7PageState extends State<Tarefa7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}