import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/comps/comps.dart';

import 'denverMG.dart';

class DenverMFPage extends StatefulWidget {
  final String title;
  const DenverMFPage({Key? key, this.title = 'Avaliação Motor-Fino'}) : super(key: key);
  @override
  DenverMFState createState() => DenverMFState();
}
class DenverMFState extends State<DenverMFPage> {
  final PrimeiroStore store = Modular.get();
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
                    "Avaliação Motor-Fino",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  )),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 2.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          denverRadioMF(index: 1,text: 'Acompanha, com o olho ou a cabeça um objeto partindo da lateral do corpo (esquerdo e direito) até o centro (até o nariz)?',answers: answers),
                          denverRadioMF(index: 2,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até passar do centro?',answers: answers),
                          denverRadioMF(index: 3,text: 'Segura um chocalho?',answers: answers),
                          denverRadioMF(index: 4,text: 'Juntas as duas mãos?',answers: answers),
                          denverRadioMF(index: 5,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até o outro lado, 180° (de um ombro ao outro)?',answers: answers),
                          denverRadioMF(index: 6,text: 'Olha para um objeto pequeno? Exemplo: tampa de uma caneta?',answers: answers),
                          denverRadioMF(index: 7,text: 'Move as mãos ou braços para alcançar um objeto pequeno sobre uma superfície?',answers: answers),
                          Center(child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const DenverMGPage(),
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

Widget denverRadioMF({int? index, String? text, Map? answers}) {
  FirebaseAuth auth = FirebaseAuth.instance;

  SingingCharacter? _character2;

  if (answers != null) {
    switch (answers['hab$index']) {
      case 'par':
        _character2 = SingingCharacter.parcial;
        break;
      case 'sim':
        _character2 = SingingCharacter.sim;
        break;
      case 'nao':
        _character2 = SingingCharacter.nao;
        break;
      default:
        _character2 = null;
    }
  } else {
    FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('denver')
        .doc('MF')
        .set({});
  }

  return Observer(builder: (_) {return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 40.0,
      ),
      textCTRST(
        stg1: 'Habilidade $index: ',
        stg2: text,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Row(
        // mainAxisSize: MainAxisSize.,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
              children: <Widget>[
                Radio(
                      value: SingingCharacter.sim,
                      toggleable: true,
                      // fillColor: MaterialStateProperty.all(Colors.green),
                      groupValue: _character2,
                      onChanged: (SingingCharacter? value) {
                        _character2 = value;
                        FirebaseFirestore.instance
                            .collection('users')
                            .doc(auth.currentUser!.uid)
                            .collection('denver')
                            .doc('MF')
                            .update({'hab$index': 'sim'}).then((value) => value);
                      }),
                
                const Text('Sim'),
              ],
            ),
          
          Column(
            children: <Widget>[
              Radio(
                    value: SingingCharacter.nao,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({'hab$index': 'nao'}).then((value) => value);
                    }),
              const Text('Não')
            ],
          ),
          Column(
            children: <Widget>[
               Radio(
                    value: SingingCharacter.parcial,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(auth.currentUser!.uid)
                          .collection('denver')
                          .doc('MF')
                          .update({'hab$index': 'par'}).then((value) => value);
                    }),
              
              const Text('Parcial')
            ],
          )
        ],
      ),
      const SizedBox(
        height: 15.0,
      ),
    ],
  );
});
}

Widget textCTRST({String? stg1, String? stg2}) {
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      children: <TextSpan>[
        TextSpan(text: stg1),
        TextSpan(text: stg2, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}