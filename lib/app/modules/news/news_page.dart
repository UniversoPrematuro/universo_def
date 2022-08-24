import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/news/news_store.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({Key? key, this.title = 'NewsPage'}) : super(key: key);
  @override
  NewsPageState createState() => NewsPageState();
}
class NewsPageState extends State<NewsPage> {
  final NewsStore store = Modular.get();

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