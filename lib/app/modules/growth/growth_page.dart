import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/growth/growth_store.dart';
import 'package:flutter/material.dart';

class GrowthPage extends StatefulWidget {
  final String title;
  const GrowthPage({Key? key, this.title = 'GrowthPage'}) : super(key: key);
  @override
  GrowthPageState createState() => GrowthPageState();
}
class GrowthPageState extends State<GrowthPage> {
  final GrowthStore store = Modular.get();

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