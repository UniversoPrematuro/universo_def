// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:universo_def/app/modules/profile/profile_store.dart';

import '../../initial/auth/auth_store.dart';
import '../edit/edit_store.dart';
import '../photoAlbum/photoAlbum_page.dart';
import '../videoAlbum/videoAlbum_page.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({Key? key}) : super(key: key);
  final EditStore store = Modular.get();
  final AuthStore authStore = Modular.get();

  double borderRadius = 20;

  void initState() {
    store.recover();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1))
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.green),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // DADOS CRIANÇA //

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return Text('Mãe: ${authStore.controllerNameMom.text}',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ));
                    }),
                    const SizedBox(height: 5),
                    Observer(builder: (_) {
                      return Text('Criança: ${store.controllerKidName.text}',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ));
                    }),
                    const SizedBox(height: 5),
                    Observer(builder: (_) {
                      return Text(
                          'Aniversário: ${store.controllerKidBirth.text}',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ));
                    }),
                    const SizedBox(height: 5),
                    Observer(builder: (_) {
                      return Text(
                          'Idade cronológica: ${store.id} Anos, ${store.month} Meses',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ));
                    }),
                    // Observer(builder: (_) {
                    //   return Text('idade corrigida: ${store.idadeCorrigida}');
                    // }),
                    TextButton(onPressed: (() => Modular.to.pushNamed("/edit/")), 
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 150.0, top: 30),
                      child:  Text(
                        "Editar perfil",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        
                        ),
                    )
                    
                    )
                   
                  ],
                  // FIM DADOS CRIANÇA //
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 15.0, bottom: 40),
                  child: Observer(builder: (_) {
                    return CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(store.photoURL),
                    );
                  }))
            ],
          ),
        );
     
  }
}

class GalleryTabs extends StatelessWidget {
  GalleryTabs({Key? key}) : super(key: key);

  final ProfileStore store = Modular.get();
  // final Function() onPressed;
  // GalleryTabs({required this.onPressed})

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(children: [
              TabBar(
                isScrollable: true,
                controller: store.tabController,
                labelColor: Colors.green,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 1.5, color: Colors.green,),
                  insets: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                indicatorColor: Colors.green,
                tabs: const [
                  Tab(
                    text: "Fotos",
                  ),
                  Tab(
                    text: "Videos",
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                child: TabBarView(
                  controller: store.tabController,
                  children: const [
                    PhotoAlbumPage(),
                    
                    
                    VideoAlbumPage()
                    
                  ],
                ),
              ),
              
            ]
          )
        )
      );
  }
}
