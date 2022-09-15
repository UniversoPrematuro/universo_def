import 'package:flutter/material.dart';

class Tarefa35Page extends StatefulWidget {
  final String title;
  const Tarefa35Page({Key? key, this.title = 'Tarefa35Page'}) : super(key: key);
  @override
  Tarefa35PageState createState() => Tarefa35PageState();
}
class Tarefa35PageState extends State<Tarefa35Page> {
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