import 'package:flutter/material.dart';

class Tarefa12Page extends StatefulWidget {
  final String title;
  const Tarefa12Page({Key? key, this.title = 'Tarefa12Page'}) : super(key: key);
  @override
  Tarefa12PageState createState() => Tarefa12PageState();
}
class Tarefa12PageState extends State<Tarefa12Page> {
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