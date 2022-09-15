import 'package:flutter/material.dart';

class Tarefa2Page extends StatefulWidget {
  final String title;
  const Tarefa2Page({Key? key, this.title = 'Tarefa2Page'}) : super(key: key);
  @override
  Tarefa2PageState createState() => Tarefa2PageState();
}
class Tarefa2PageState extends State<Tarefa2Page> {
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