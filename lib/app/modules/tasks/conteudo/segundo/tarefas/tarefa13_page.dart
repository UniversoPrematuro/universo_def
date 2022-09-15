import 'package:flutter/material.dart';

class Tarefa13Page extends StatefulWidget {
  final String title;
  const Tarefa13Page({Key? key, this.title = 'Tarefa13Page'}) : super(key: key);
  @override
  Tarefa13PageState createState() => Tarefa13PageState();
}
class Tarefa13PageState extends State<Tarefa13Page> {
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