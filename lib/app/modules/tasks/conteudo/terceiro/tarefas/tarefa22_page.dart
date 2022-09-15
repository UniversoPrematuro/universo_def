import 'package:flutter/material.dart';

class Tarefa22Page extends StatefulWidget {
  final String title;
  const Tarefa22Page({Key? key, this.title = 'Tarefa22Page'}) : super(key: key);
  @override
  Tarefa22PageState createState() => Tarefa22PageState();
}
class Tarefa22PageState extends State<Tarefa22Page> {
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