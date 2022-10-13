import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:universo_def/app/modules/tasks/denverIILG.dart';
import 'package:universo_def/teste.dart';




enum SingingCharacter { sim, nao, parcial }

class DenverIIMF extends StatelessWidget {
  int fase;
  String UID;
  String name;
  DenverIIMF(this.fase,this.UID,this.name, {super.key});

  SingingCharacter? _character;

  Map? answers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images/LogoTop.png"),
          SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: Text(
          'Desenvolvimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body:
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('users').doc(UID)
              .collection('denver').snapshots(),
          builder: (context, snapshot) {

            if(snapshot.hasData) {
              snapshot.data!.docs.forEach(
                    (element) {
                  if(element.id == "MF") answers = element.data() as Map?;
                }
            );
            }

            if(snapshot.hasData) {
              return ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0),
                  child: Text(
                    'Avaliação Motor Fino-Adaptativo',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // getHabs(answers!),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right:0.0,bottom:20.0,top:20.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(

                      
                      label: Text(
                        'Próxima avaliação',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                      icon: Icon(Icons.arrow_forward,color: Colors.white,),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: ((context) => DenverIILG(fase,UID,name))
                            )
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right:0.0,bottom:20.0,top:0.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(

                      
                      label: Text(
                        'Ver resultados',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                      icon: Icon(Icons.assessment,color: Colors.white,),
                      onPressed: confirmAnswrs(snapshot.data!.docs, fase)?(){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: ((context) => StackedBarTargetLineChart(UID,'GR'))
                            )
                        );
                      }:null,
                    ),
                  ),
                ),
                confirmAnswrs(snapshot.data!.docs, fase)?Container():
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right:20.0,bottom:20.0,top:0.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 192, 60, 39),
                        ),
                        text: 'Aviso: ',
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Para acessar o resultado, responda todas as perguntas nesta pagina e também na ',
                              style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black)
                          ),
                          TextSpan(text: 'Próxima avaliação.',style: TextStyle(color: Color.fromARGB(255, 101, 188, 89)))
                        ]
                    ),
                  ),
                )
              ],
            );
            } else {
              return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
            );
            }
          }
        ));
      
  }

  Widget textCTRST ({String? stg1,String? stg2}) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,

        ),
        children: <TextSpan>[
          TextSpan(text: stg1),
          TextSpan(text: stg2, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Future<List<Widget>> getHabs(Map answers) async {
    if(fase == 1) {
      return [
      denverRadio(index: 1,text: 'Acompanha, com o olho ou a cabeça um objeto partindo da lateral do corpo (esquerdo e direito) até o centro (até o nariz)?',answers: answers),
      denverRadio(index: 2,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até passar do centro?',answers: answers),
      denverRadio(index: 3,text: 'Segura um chocalho?',answers: answers),
      denverRadio(index: 4,text: 'Juntas as duas mãos?',answers: answers),
      denverRadio(index: 5,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até o outro lado, 180° (de um ombro ao outro)?',answers: answers),
      denverRadio(index: 6,text: 'Olha para um objeto pequeno? Exemplo: tampa de uma caneta?',answers: answers),
      denverRadio(index: 7,text: 'Move as mãos ou braços para alcançar um objeto pequeno sobre uma superfície?',answers: answers),
    ];
    } else if(fase == 2) {
      return [
      denverRadio(index: 1,text: 'Acompanha, com o olho ou a cabeça um objeto partindo da lateral do corpo (esquerdo e direito) até o centro (até o nariz)?',answers: answers),
      denverRadio(index: 2,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até passar do centro?',answers: answers),
      denverRadio(index: 3,text: 'Segura um chocalho?',answers: answers),
      denverRadio(index: 4,text: 'Juntas as duas mãos?',answers: answers),
      denverRadio(index: 5,text: 'Acompanha, com o olho ou cabeça um objeto partindo da lateral até o outro lado, 180° (de um ombro ao outro)?',answers: answers),
      denverRadio(index: 6,text: 'Olha para um objeto pequeno? Exemplo: tampa de uma caneta.',answers: answers),
      denverRadio(index: 7,text: 'Move as mãos ou braços para alcançar um objeto pequeno sobre uma superfície?',answers: answers),
      denverRadio(index: 8,text: 'Olha para baixo quando o brinquedo quando cai no chão?',answers: answers),
      denverRadio(index: 9,text: 'Consegue pegar um objeto pequeno? Exemplo: tampa de uma caneta.',answers: answers),
      denverRadio(index: 10,text: 'Passa um objeto de uma mão para outra?',answers: answers),
      denverRadio(index: 11,text: 'Segura dois objetos diferentes, um em cada mão?',answers: answers),
      denverRadio(index: 12,text: 'Pega objetos pequenos com dedos (Pinça)? Exemplo: tampa de uma caneta.',answers: answers),
      denverRadio(index: 13,text: 'Bate um objeto contra o outro? Exemplo: panelas, potes e brinquedos.',answers: answers),
    ];
    } else if(fase == 3) {
      return [
      denverRadio(index: 12,text: 'Pega objetos pequenos com dedos (Pinça)? Exemplo: tampa de uma caneta.',answers: answers),
      denverRadio(index: 13,text: 'Bate um objeto contra o outro? Exemplo: panelas, potes e brinquedos.',answers: answers),
      denverRadio(index: 14,text: 'Coloca um objeto menor dentro de outro? Exemplo: Soltar um brinquedo dentro de uma caneca.',answers: answers),
    ];
    } else if(fase == 4) {
      return [
      denverRadio(index: 12,text: 'Pega objetos pequenos com dedos (Pinça)? Exemplo: tampa de uma caneta ou panela.',answers: answers),
      denverRadio(index: 13,text: 'Bate um objeto contra o outro? Exemplo: panelas, potes e brinquedos.',answers: answers),
      denverRadio(index: 14,text: 'Coloca um objeto menor dentro de outro? Exemplo: Soltar um brinquedo dentro de uma caneca.',answers: answers),
      denverRadio(index: 15,text: 'Rabisca espontaneamente no papel?',answers: answers),
      denverRadio(index: 16,text: 'Retira objeto pequeno? Exemplo: Retira brinquedo dentro de uma caneca ou panela.',answers: answers),
    ];
    }
    return getHabs(answers);
  }

  Widget denverRadio ({int? index, String? text, Map? answers}){

    SingingCharacter? _character2 = null;

    if(answers != null){
      switch(answers['hab${index}']){
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
      FirebaseFirestore.instance.collection('users').doc(UID)
        .collection('denver').doc('MF').set(
        {}
    ).then((value) => null);
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.0,),
        textCTRST(
          stg1: 'Habilidade $index: ',
          stg2: text!,
        ),
        SizedBox(height: 10.0,),
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
                      FirebaseFirestore.instance.collection('users').doc(UID)
                          .collection('denver').doc('MF').update(
                          {'hab${index}':'sim'}
                      ).then((value) => null);
                    }
                ),
                Text('Sim')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.nao,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance.collection('users').doc(UID)
                          .collection('denver').doc('MF').update(
                          {'hab${index}':'nao'}
                      ).then((value) => null);
                    }
                ),
                Text('Não')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.parcial,
                    groupValue: _character2,
                    onChanged: (SingingCharacter? value) {
                      FirebaseFirestore.instance.collection('users').doc(UID)
                          .collection('denver').doc('MF').update(
                          {'hab${index}':'par'}
                      ).then((value) => null);
                    }
                ),
                Text('Parcial')
              ],
            )
          ],
        ),
        SizedBox(height: 15.0,),
      ],
    );

  }

  bool confirmAnswrs(List<QueryDocumentSnapshot> docs, int fase){

    List<int> lPS = [5,6,12,12];
    List<int> lMF = [7,13,14,16];
    List<int> lMG = [10,12,16,18];
    List<int> lLG = [7,13,13,16];
    List<int> kPS = [1,3,7,7];
    List<int> kMF = [1,1,12,12];
    List<int> kMG = [1,3,8,12];
    List<int> kLG = [1,3,7,11];
    List<int> l = [];
    List<int> k = [];

    bool test = true;

    int max = fase-1;

    Map mp = Map();

    print('\n');
    docs.forEach(
            (m) {
          if(m.id != "result"){
            switch (m.id){
              case "PS":
                {l=lPS;k=kPS;}
                break;
              case "MF":
                {l=lMF;k=kMF;}
                break;
              case "MG":
                {l=lMG;k=kMG;}
                break;
              case "LG":
                {l=lLG;k=kLG;}
                break;
            }

            // print("\n${m.id}");
            // print(l);
            // print(k);
            // print('Habilidades: ${k[max]} até ${l[max]}');
            // List<int> habs = m.data().keys.map((x)=>int.parse(x.substring(3))).toList();

            // print(habs.where((e) => e <= (l[max]) && e >= (k[max])));
            // print(habs.where((e) => e <= (l[max]) && e >= (k[max])).length);
            // print(l[max] - (k[max]) + 1);
            // print("${(habs.where((e) => e <= (l[max]) && e >= (k[max])).length) == (l[max] - (k[max]) + 1)}");

            // test = test && ((habs.where((e) => e <= (l[max]) && e >= (k[max])).length) == (l[max] - (k[max]) + 1));
          }
        }
    );

    if(docs.length == 0) test = false;
    return(test);
  }

}
