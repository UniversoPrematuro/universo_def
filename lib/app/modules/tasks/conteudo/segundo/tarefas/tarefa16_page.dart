import 'package:flutter/material.dart';

class Tarefa16Page extends StatefulWidget {
  final String title;
  const Tarefa16Page({Key? key, this.title = 'Tarefa16Page'}) : super(key: key);
  @override
  Tarefa16PageState createState() => Tarefa16PageState();
}
class Tarefa16PageState extends State<Tarefa16Page> {
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