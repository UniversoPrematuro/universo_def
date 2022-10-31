import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/comps/comps.dart';


import '../../../../../profile/edit/edit_store.dart';
import '../../terceiro_store.dart';
import 'denverLG.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  const AvaliacaoPage({Key? key, this.title = 'Avaliação Pessoal - Social'}) : super(key: key);
  @override
  AvaliacaoPageState createState() => AvaliacaoPageState();
}
class AvaliacaoPageState extends State<AvaliacaoPage> {
  final TerceiroStore store = Modular.get();
  final EditStore eStore = Modular.get();
  // String name = eStore.controllerKidName.text;
  Map? answers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Observer(builder: (_) {return Column(
          children: [
            Expanded(child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Center(child: Text(
                    "Avaliação Pessoal - Social",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 1.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          denverRadio(index: 7,text: 'Joga bola com o examinador?',answers: answers),
                          denverRadio(index: 8,text: 'Imita a ação de uma pessoa?',answers: answers),
                          denverRadio(index: 9,text: 'Da "tchau"?',answers: answers),
                          denverRadio(index: 10,text: 'Mostra que quer?',answers: answers),
                          denverRadio(index: 11,text: 'Bate palmas?',answers: answers),
                          denverRadio(index: 12,text: 'Segura uma xícara ou copo e ${eStore.controllerKidName.text} o conteúdo sozinho(a)?',answers: answers),
                          Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const DenverLGPage(),
                                )
                              );
                            },
                            child: const Text("Proxima avaliação"),
                          ),)
                      ],),
                    ),
                  )
                 
                ]),
              )
            ))
          ],
        );
  }),
    ));
  }
}