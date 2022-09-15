import 'package:flutter/material.dart';

class Tarefa10Page extends StatefulWidget {
  final String title;
  const Tarefa10Page({Key? key, this.title = 'Tarefa10Page'}) : super(key: key);
  @override
  Tarefa10PageState createState() => Tarefa10PageState();
}
class Tarefa10PageState extends State<Tarefa10Page> {
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