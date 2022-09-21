import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/producoes/producoes_store.dart';
import 'package:flutter/material.dart';

class ProducoesPage extends StatefulWidget {
  final String title;
  const ProducoesPage({Key? key, this.title = 'ProducoesPage'}) : super(key: key);
  @override
  ProducoesPageState createState() => ProducoesPageState();
}
class ProducoesPageState extends State<ProducoesPage> {
  final ProducoesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[Placeholder()],
      ),
    );
  }
}