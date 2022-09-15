import 'package:flutter/material.dart';

class Tarefa1Page extends StatefulWidget {
  final String title;
  const Tarefa1Page({Key? key, this.title = 'Tarefa1Page'}) : super(key: key);
  @override
  Tarefa1PageState createState() => Tarefa1PageState();
}
class Tarefa1PageState extends State<Tarefa1Page> {
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