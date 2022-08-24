import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/profile/profile_store.dart';

import '../edit/edit_store.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({Key? key}) : super(key: key);
  final EditStore store = Modular.get();

  double borderRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .2,
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('oi'), Text('oi'), Text('oi')],
            // FIM DADOS CRIANÇA //
          ),

          Observer(builder: (_) {
            return CircleAvatar(
              radius: 45,
              backgroundColor: Colors.black,
              // backgroundImage: NetworkImage(store.photoURL),
            );
          }),
        ],
      ),
    );
  }
}

class GalleryTabs extends StatelessWidget {
  GalleryTabs({Key? key}) : super(key: key);

  final ProfileStore store = Modular.get();

  

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TabBar(
            onTap: (value) {
              store.selectedIndex += 1;
            },
            isScrollable: true,
            controller: store.tabController,
            labelColor: Colors.green,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.5, color: Colors.green),
              insets: EdgeInsets.symmetric(horizontal: 30.0),
            ),
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: "Fotos",
              ),
              Tab(
                text: "Videos",
              ),
              
            ],
            
          ),
          
          
          
        ));
  }
}
