import 'package:flutter/material.dart';

class Tarefa5Page extends StatefulWidget {
  final String title;
  const Tarefa5Page({Key? key, this.title = 'Tarefa5Page'}) : super(key: key);
  @override
  Tarefa5PageState createState() => Tarefa5PageState();
}
class Tarefa5PageState extends State<Tarefa5Page> {
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