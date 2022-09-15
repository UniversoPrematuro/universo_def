import 'package:flutter/material.dart';

class Tarefa24Page extends StatefulWidget {
  final String title;
  const Tarefa24Page({Key? key, this.title = 'Tarefa24Page'}) : super(key: key);
  @override
  Tarefa24PageState createState() => Tarefa24PageState();
}
class Tarefa24PageState extends State<Tarefa24Page> {
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