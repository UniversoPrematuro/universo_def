// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/home/home_content/homeContent_page.dart';
import 'package:universo_def/app/modules/profile/photo_album/photoAlbum_page.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';

import '../../initial/auth/auth_store.dart';
import '../edit/edit_store.dart';

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
    return Observer(
      builder: (_) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 5))
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
                      return Text('Idade cronológica: ${store.id} Anos, ${store.month} Meses' ,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ));
                    }),

                    Observer(
                      builder: (_) {
                        return Text('idade corrigida: ${store.idadeCorrigida}');
      }),
                    
                    ElevatedButton(
                        onPressed: () => Modular.to.pushNamed("/edit"),
                        child: const Text("Editar"))
                  ],
                  // FIM DADOS CRIANÇA //
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
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
      },
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
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                controller: store.tabController,
                labelColor: Colors.green,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.5, color: Colors.green),
                  insets: EdgeInsets.symmetric(horizontal: 30.0),
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
                  children: [
                    const PhotoAlbumPage(),
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
