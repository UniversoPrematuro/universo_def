import 'package:flutter/material.dart';

class Tarefa17Page extends StatefulWidget {
  final String title;
  const Tarefa17Page({Key? key, this.title = 'Tarefa17Page'}) : super(key: key);
  @override
  Tarefa17PageState createState() => Tarefa17PageState();
}
class Tarefa17PageState extends State<Tarefa17Page> {
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