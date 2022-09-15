import 'package:flutter/material.dart';

class Tarefa15Page extends StatefulWidget {
  final String title;
  const Tarefa15Page({Key? key, this.title = 'Tarefa15Page'}) : super(key: key);
  @override
  Tarefa15PageState createState() => Tarefa15PageState();
}
class Tarefa15PageState extends State<Tarefa15Page> {
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