import 'package:flutter/material.dart';

class Tarefa29Page extends StatefulWidget {
  final String title;
  const Tarefa29Page({Key? key, this.title = 'Tarefa29Page'}) : super(key: key);
  @override
  Tarefa29PageState createState() => Tarefa29PageState();
}
class Tarefa29PageState extends State<Tarefa29Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}