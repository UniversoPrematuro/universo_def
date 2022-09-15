import 'package:flutter/material.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  const AvaliacaoPage({Key? key, this.title = 'AvaliacaoPage'}) : super(key: key);
  @override
  AvaliacaoPageState createState() => AvaliacaoPageState();
}
class AvaliacaoPageState extends State<AvaliacaoPage> {
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