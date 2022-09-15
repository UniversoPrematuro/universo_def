import 'package:flutter/material.dart';

class Tarefa32Page extends StatefulWidget {
  final String title;
  const Tarefa32Page({Key? key, this.title = 'Tarefa32Page'}) : super(key: key);
  @override
  Tarefa32PageState createState() => Tarefa32PageState();
}
class Tarefa32PageState extends State<Tarefa32Page> {
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