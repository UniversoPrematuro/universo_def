import 'package:flutter/material.dart';

class Tarefa14Page extends StatefulWidget {
  final String title;
  const Tarefa14Page({Key? key, this.title = 'Tarefa14Page'}) : super(key: key);
  @override
  Tarefa14PageState createState() => Tarefa14PageState();
}
class Tarefa14PageState extends State<Tarefa14Page> {
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