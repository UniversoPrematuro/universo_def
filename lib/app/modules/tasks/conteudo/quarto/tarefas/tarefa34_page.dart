import 'package:flutter/material.dart';

class Tarefa34Page extends StatefulWidget {
  final String title;
  const Tarefa34Page({Key? key, this.title = 'Tarefa34Page'}) : super(key: key);
  @override
  Tarefa34PageState createState() => Tarefa34PageState();
}
class Tarefa34PageState extends State<Tarefa34Page> {
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