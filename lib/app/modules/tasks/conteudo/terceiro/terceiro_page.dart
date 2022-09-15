import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_store.dart';
import 'package:flutter/material.dart';

class TerceiroPage extends StatefulWidget {
  final String title;
  const TerceiroPage({Key? key, this.title = 'TerceiroPage'}) : super(key: key);
  @override
  TerceiroPageState createState() => TerceiroPageState();
}
class TerceiroPageState extends State<TerceiroPage> {
  final TerceiroStore store = Modular.get();

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