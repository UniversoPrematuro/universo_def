import 'package:flutter/material.dart';

class Tarefa6Page extends StatefulWidget {
  final String title;
  const Tarefa6Page({Key? key, this.title = 'Tarefa6Page'}) : super(key: key);
  @override
  Tarefa6PageState createState() => Tarefa6PageState();
}
class Tarefa6PageState extends State<Tarefa6Page> {
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