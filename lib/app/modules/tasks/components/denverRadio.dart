import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum SingingCharacter {sim, nao, parcial}

Widget denverRadio ({int? index, String? text, Map? answers}){

    SingingCharacter? _character2;
    FirebaseAuth auth = FirebaseAuth.instance;

    if(answers != null){
      switch(answers['hab$index']){
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
      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
        .collection('denver').doc('PS').set(
        {}
    ).then((value) => null);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40.0,),
        textCTRST(
          stg1: 'Habilidade $index: ',
          stg2: text,
        ),
        const SizedBox(height: 10.0,),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.sim,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                        {'hab$index':'sim'}
                      ).then((value) => null);
                    }
                ),
                const Text('Sim')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.nao,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                          {'hab$index':'nao'}
                      ).then((value) => null);
                    }
                ),
                const Text('Não')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.parcial,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                          {'hab$index':'par'}
                      ).then((value) => null);
                    }
                ),
                const Text('Parcial')
              ],
            )
          ],
        ),
        const SizedBox(height: 15.0,),
      ],
    );

  }

  Widget textCTRST ({String? stg1,String? stg2}) {
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
