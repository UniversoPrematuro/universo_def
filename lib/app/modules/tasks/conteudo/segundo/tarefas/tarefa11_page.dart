import 'package:flutter/material.dart';

class Tarefa11Page extends StatefulWidget {
  final String title;
  const Tarefa11Page({Key? key, this.title = 'Tarefa11Page'}) : super(key: key);
  @override
  Tarefa11PageState createState() => Tarefa11PageState();
}
class Tarefa11PageState extends State<Tarefa11Page> {
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