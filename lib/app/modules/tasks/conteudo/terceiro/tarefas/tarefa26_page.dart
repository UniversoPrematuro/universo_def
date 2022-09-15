import 'package:flutter/material.dart';

class Tarefa26Page extends StatefulWidget {
  final String title;
  const Tarefa26Page({Key? key, this.title = 'Tarefa26Page'}) : super(key: key);
  @override
  Tarefa26PageState createState() => Tarefa26PageState();
}
class Tarefa26PageState extends State<Tarefa26Page> {
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