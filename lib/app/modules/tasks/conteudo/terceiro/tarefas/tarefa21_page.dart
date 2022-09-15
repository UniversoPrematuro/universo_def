import 'package:flutter/material.dart';

class Tarefa21Page extends StatefulWidget {
  final String title;
  const Tarefa21Page({Key? key, this.title = 'Tarefa21Page'}) : super(key: key);
  @override
  Tarefa21PageState createState() => Tarefa21PageState();
}
class Tarefa21PageState extends State<Tarefa21Page> {
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