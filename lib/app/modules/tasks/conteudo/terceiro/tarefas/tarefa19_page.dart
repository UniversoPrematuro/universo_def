import 'package:flutter/material.dart';

class Tarefa19Page extends StatefulWidget {
  final String title;
  const Tarefa19Page({Key? key, this.title = 'Tarefa19Page'}) : super(key: key);
  @override
  Tarefa19PageState createState() => Tarefa19PageState();
}
class Tarefa19PageState extends State<Tarefa19Page> {
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