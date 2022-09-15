import 'package:flutter/material.dart';

class Tarefa30Page extends StatefulWidget {
  final String title;
  const Tarefa30Page({Key? key, this.title = 'Tarefa30Page'}) : super(key: key);
  @override
  Tarefa30PageState createState() => Tarefa30PageState();
}
class Tarefa30PageState extends State<Tarefa30Page> {
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