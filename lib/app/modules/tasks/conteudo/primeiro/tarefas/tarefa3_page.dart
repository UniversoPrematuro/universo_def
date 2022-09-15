import 'package:flutter/material.dart';

class Tarefa3Page extends StatefulWidget {
  final String title;
  const Tarefa3Page({Key? key, this.title = 'Tarefa3Page'}) : super(key: key);
  @override
  Tarefa3PageState createState() => Tarefa3PageState();
}
class Tarefa3PageState extends State<Tarefa3Page> {
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