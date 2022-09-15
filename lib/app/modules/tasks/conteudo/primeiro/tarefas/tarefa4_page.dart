import 'package:flutter/material.dart';

class Tarefa4Page extends StatefulWidget {
  final String title;
  const Tarefa4Page({Key? key, this.title = 'Tarefa4Page'}) : super(key: key);
  @override
  Tarefa4PageState createState() => Tarefa4PageState();
}
class Tarefa4PageState extends State<Tarefa4Page> {
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