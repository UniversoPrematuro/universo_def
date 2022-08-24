import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/prods/prods_store.dart';
import 'package:flutter/material.dart';

class ProdsPage extends StatefulWidget {
  final String title;
  const ProdsPage({Key? key, this.title = 'ProdsPage'}) : super(key: key);
  @override
  ProdsPageState createState() => ProdsPageState();
}
class ProdsPageState extends State<ProdsPage> {
  final ProdsStore store = Modular.get();

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