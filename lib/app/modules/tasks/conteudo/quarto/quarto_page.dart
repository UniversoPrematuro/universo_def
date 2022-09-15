import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_store.dart';
import 'package:flutter/material.dart';

class QuartoPage extends StatefulWidget {
  final String title;
  const QuartoPage({Key? key, this.title = 'QuartoPage'}) : super(key: key);
  @override
  QuartoPageState createState() => QuartoPageState();
}
class QuartoPageState extends State<QuartoPage> {
  final QuartoStore store = Modular.get();

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