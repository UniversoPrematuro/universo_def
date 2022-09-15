import 'package:flutter/material.dart';

class Tarefa18Page extends StatefulWidget {
  final String title;
  const Tarefa18Page({Key? key, this.title = 'Tarefa18Page'}) : super(key: key);
  @override
  Tarefa18PageState createState() => Tarefa18PageState();
}
class Tarefa18PageState extends State<Tarefa18Page> {
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