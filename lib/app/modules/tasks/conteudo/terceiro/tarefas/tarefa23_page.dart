import 'package:flutter/material.dart';

class Tarefa23Page extends StatefulWidget {
  final String title;
  const Tarefa23Page({Key? key, this.title = 'Tarefa23Page'}) : super(key: key);
  @override
  Tarefa23PageState createState() => Tarefa23PageState();
}
class Tarefa23PageState extends State<Tarefa23Page> {
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