import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/initial/components/buttons.dart';

import 'initial_store.dart';



class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}

class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 193,143),

          // title: Text(widget.title),
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 193,143),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(builder: (_, constraints) {
                  return SingleChildScrollView(
                      child: Column(
                    children: [
                      Center(
                        child: Image.asset('images/logo/LogoMov.gif', width: 350),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 30),
                          GradientButtonFb1(
                              onPressed: () {Modular.to.pushNamed('/home/');}, 
                              text: "Entre Agora!"
                            ),

                          OutlineButtonFb1(
                              onPressed: () {
                                Modular.to.pushNamed('/auth/');
                              },
                              text: "Primeira vez no Universo Prematuro?")
                            ],
                          )
                        ],
                      )
                    );
                  }
                ),
              )
            ],
          ),
        )
      );
  }
}