import 'package:flutter/material.dart';

class Tarefa27Page extends StatefulWidget {
  final String title;
  const Tarefa27Page({Key? key, this.title = 'Tarefa27Page'}) : super(key: key);
  @override
  Tarefa27PageState createState() => Tarefa27PageState();
}
class Tarefa27PageState extends State<Tarefa27Page> {
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