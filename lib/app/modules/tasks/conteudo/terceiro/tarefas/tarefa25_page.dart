import 'package:flutter/material.dart';

class Tarefa25Page extends StatefulWidget {
  final String title;
  const Tarefa25Page({Key? key, this.title = 'Tarefa25Page'}) : super(key: key);
  @override
  Tarefa25PageState createState() => Tarefa25PageState();
}
class Tarefa25PageState extends State<Tarefa25Page> {
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