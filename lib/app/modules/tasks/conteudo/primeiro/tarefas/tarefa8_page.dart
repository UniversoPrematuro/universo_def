import 'package:flutter/material.dart';

class Tarefa8Page extends StatefulWidget {
  final String title;
  const Tarefa8Page({Key? key, this.title = 'Tarefa8Page'}) : super(key: key);
  @override
  Tarefa8PageState createState() => Tarefa8PageState();
}
class Tarefa8PageState extends State<Tarefa8Page> {
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