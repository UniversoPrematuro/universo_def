import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';



enum SingingCharacter { sim, nao, parcial }
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  

Widget  denverRadio({int? index, String? text, Map? answers}) {
  FirebaseAuth auth = FirebaseAuth.instance;
  
  SingingCharacter? _character2;
  String uid = auth.currentUser!.uid;

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
  } 
  // else {
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uid)
  //       .collection('denver')
  //       .doc('PS')
  //       .set({});
  // }
  // saveFire(){
  //   String answers = _character2.toString();
  //   Map<String, dynamic> data = {
  //     "hab$index": answers
  //   };
  //   db.collection("users").doc(auth.currentUser!.uid).collection("denver").doc("PS").update({'hab$index': _character2});
  // }

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
                            .doc('PS')
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
                          .doc('PS')
                          .set({'hab$index': 'nao'}).then((value) => value);
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
                          .doc('PS')
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

// class RadioDenver extends StatefulWidget {
//   RadioDenver({super.key, required this.index, required this.text});
//   int index;
//   String text;
//   // Map answers;
//   @override
//   State<RadioDenver> createState() => _RadioDenverState();
// }

// class _RadioDenverState extends State<RadioDenver> {
//   SingingCharacter? character;
//   FirebaseAuth auth = FirebaseAuth.instance;
//   int? index;
//   String? text;
//   Map? answers;



//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30.0),
//           border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 3.0)),
//       child: Column(
//         children: <Widget>[
//           const Text('Responder ao final de dois dias sobre a execução das tarefas',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               )),
//           RadioListTile(
//               groupValue: character,
//               value: SingingCharacter.sim,
//               title: const Text("Sim"),
//               toggleable: false,
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   character = value;
//                   // tStore.answer = value.toString();
//                 });
//                  FirebaseFirestore.instance
//                           .collection('users')
//                           .doc(auth.currentUser!.uid)
//                           .collection('denver')
//                           .doc('PS')
//                           .update({'hab$index': 'sim'});
                
//               },
              
//               ),
//           RadioListTile(
//               groupValue: character,
//               value: SingingCharacter.nao,
//               title: const Text("Nao"),
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   character = value;
//                   // tStore.answer = value.toString();
//                 });
//                  FirebaseFirestore.instance
//                           .collection('users')
//                           .doc(auth.currentUser!.uid)
//                           .collection('denver')
//                           .doc('PS')
//                           .update({'hab$index': 'nao'});
                
//               }),
//           RadioListTile(
//               groupValue: character,
//               value: SingingCharacter.parcial,
//               title: const Text("Parcial"),
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   character = value;
//                   // tStore.answer = op.toString();
//                 });
//                  FirebaseFirestore.instance
//                           .collection('users')
//                           .doc(auth.currentUser!.uid)
//                           .collection('denver')
//                           .doc('PS')
//                           .update({'hab$index': 'parcial'});
                
//               }),
//         ],
//       ),
//     );;
//   }
// }
