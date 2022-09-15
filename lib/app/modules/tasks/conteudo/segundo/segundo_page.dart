import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_store.dart';
import 'package:flutter/material.dart';

class SegundoPage extends StatefulWidget {
  final String title;
  const SegundoPage({Key? key, this.title = 'SegundoPage'}) : super(key: key);
  @override
  SegundoPageState createState() => SegundoPageState();
}
class SegundoPageState extends State<SegundoPage> {
  final SegundoStore store = Modular.get();

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