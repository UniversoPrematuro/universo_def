import 'package:flutter/material.dart';

class Tarefa9Page extends StatefulWidget {
  final String title;
  const Tarefa9Page({Key? key, this.title = 'Tarefa9Page'}) : super(key: key);
  @override
  Tarefa9PageState createState() => Tarefa9PageState();
}
class Tarefa9PageState extends State<Tarefa9Page> {
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