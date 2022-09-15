import 'package:flutter/material.dart';

class Tarefa20Page extends StatefulWidget {
  final String title;
  const Tarefa20Page({Key? key, this.title = 'Tarefa20Page'}) : super(key: key);
  @override
  Tarefa20PageState createState() => Tarefa20PageState();
}
class Tarefa20PageState extends State<Tarefa20Page> {
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