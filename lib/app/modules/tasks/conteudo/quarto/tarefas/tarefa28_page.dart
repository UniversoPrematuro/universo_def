import 'package:flutter/material.dart';

class Tarefa28Page extends StatefulWidget {
  final String title;
  const Tarefa28Page({Key? key, this.title = 'Tarefa28Page'}) : super(key: key);
  @override
  Tarefa28PageState createState() => Tarefa28PageState();
}
class Tarefa28PageState extends State<Tarefa28Page> {
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