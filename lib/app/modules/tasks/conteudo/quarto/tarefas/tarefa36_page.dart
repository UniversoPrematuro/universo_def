import 'package:flutter/material.dart';

class Tarefa36Page extends StatefulWidget {
  final String title;
  const Tarefa36Page({Key? key, this.title = 'Tarefa36Page'}) : super(key: key);
  @override
  Tarefa36PageState createState() => Tarefa36PageState();
}
class Tarefa36PageState extends State<Tarefa36Page> {
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