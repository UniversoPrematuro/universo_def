import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/initial/components/buttons.dart';
import 'package:universo_def/app/modules/initial/components/fields.dart';
import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_store.dart';

import '../models/user_model.dart';
import '../profile/edit/edit_store.dart';
import 'initial_store.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}

class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();

  final EditStore editStore = Modular.get();

  final PhotoAlbumStore pStore = Modular.get();
  @override
  void initState() {
    editStore.recover();
    // editStore.recoverKid();
    // editStore.calculoIdadeCrono();
    // store.initReactions();
    super.initState();
  }

  // TODO TRANSFROMAR EM DIAS

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 193, 143),

          // title: Text(widget.title),
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 193, 143),
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
                        child:
                            Image.asset('images/logo/LogoMov.gif', width: 350),
                      ),
                      Observer(builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                          child: EmailInputFieldFb3(
                              controllerEmail: store.controllerEmail),
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: PasswordInput(
                            controllerPass: store.controllerPass,
                            hintText: 'Senha'),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Observer(builder: (_) {
                              return Center(
                                child: Text(store.erro, 
                                style: const TextStyle(
                                  color:  Color.fromARGB(255, 238, 66, 54),
                                  fontWeight: FontWeight.w500,
                                ),),
                              );
                            }),
                          ),
                          const SizedBox(height: 30),

                          LoadingAnimatedButton(
                            child: Text(
                              "Entre",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600
                              ),
                              ), onTap: (){
                            store.signIn(UserModel());
                            editStore.recover();
                          }),
                          // GradientButtonFb1(
                          //     onPressed: () async {
                          //       store.signIn(UserModel());
                          //       editStore.recover();
                                
                          //       // editStore.recoverKid();
                          //     },
                          //     text: "Entre Agora!"),
                          
                          OutlineButtonFb1(
                              onPressed: () {
                                Modular.to.pushNamed('/auth/');
                              },
                              text: "Primeira vez no Universo Prematuro?")
                        ],
                      )
                    ],
                  ));
                }),
              )
            ],
          ),
        ));
  }
}
