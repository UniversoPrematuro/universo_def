import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/noticias/noticias_store.dart';
import 'package:flutter/material.dart';

import 'components/noticia_widget.dart';

class NoticiasPage extends StatefulWidget {
  final String title;
  const NoticiasPage({Key? key, this.title = 'NoticiasPage'}) : super(key: key);
  @override
  NoticiasPageState createState() => NoticiasPageState();
}
class NoticiasPageState extends State<NoticiasPage> {
  final NoticiasStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
          noticiaContent('images/crescimento/1-4/initial.png',
          textContent('OI\n', 'TUDO BEM?')
          ),
         
          
        ],
      ),
    );
  }
}