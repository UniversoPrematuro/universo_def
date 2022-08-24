import 'package:flutter/foundation.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

import 'package:universo_def/app/modules/home/home_store.dart';

import '../profile/profile_page.dart';
import 'home_content/homeContent_page.dart';



class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {

  List widgetOptions =  [
    const HomeContentPage(),
    const ProfilePage(),
    // const DesenvolvimentoPage(),
    // const CrescimentoPage()

  ];
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Observer(builder: (_) {
        return widgetOptions.elementAt(store.currentIndex);
      }),

      bottomNavigationBar: bottomNavigationBar(),
      
      
    );
  }
}

Widget bottomNavigationBar() {
  final HomeStore store = Modular.get();
  return Observer(builder: (_){
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: store.currentIndex,
      onTap: (index) {
        if (kDebugMode) {
          print(index);
        }
        store.updateCurrentIndex(index);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
              
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
              
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task_alt),
          label: "Tarefas",
              
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tips_and_updates_rounded),
          label: "Dicas",
              
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_rounded),
          label: "Mais",
              
          ),
      ]
      
      );
  });
}



