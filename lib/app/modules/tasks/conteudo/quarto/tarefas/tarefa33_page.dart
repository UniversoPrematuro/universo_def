import 'package:flutter/material.dart';

class Tarefa33Page extends StatefulWidget {
  final String title;
  const Tarefa33Page({Key? key, this.title = 'Tarefa33Page'}) : super(key: key);
  @override
  Tarefa33PageState createState() => Tarefa33PageState();
}
class Tarefa33PageState extends State<Tarefa33Page> {
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