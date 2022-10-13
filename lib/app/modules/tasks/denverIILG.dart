import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:universo_def/app/modules/tasks/denverIIMG.dart';
// import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:universo_def/teste.dart';


// import '../../teste.dart';

enum SingingCharacter { sim, nao, parcial }

class DenverIILG extends StatelessWidget {

  int fase;
  String UID;
  String name;
  DenverIILG(this.fase,this.UID,this.name);

  Map? answers;

  @override
  Widget build(BuildContext context) {
    // usrLOG(UID, "DenverllLG").then((_){});
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

            // ignore: curly_braces_in_flow_control_structures
            if(snapshot.hasData)snapshot.data!.docs.forEach(
                    (element) {
                  if(element.id == "LG") answers = element.data() as Map;
                }
            );

            if(snapshot.hasData) return ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0),
                  child: Text(
                    'Avaliação Linguagem',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ...getHabs(answers!),
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
                                builder: ((context) => DenverIIMG(fase,UID,name))
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
            else return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
            );
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

  List<Widget> getHabs(Map answers) {
    if(fase == 1) return [
      denverRadio(index: 1,text: 'Reage ao som do sino? (Movimenta os olhos na direção do barulho ou alguma expressão corporal?',answers: answers),
      denverRadio(index: 2,text: 'Emite algum som?',answers: answers),
      denverRadio(index: 3,text: 'Fala OOO/AAH?',answers: answers),
      denverRadio(index: 4,text: 'Riso(Gargalhada)?',answers: answers),
      denverRadio(index: 5,text: 'Grita?',answers: answers),
      denverRadio(index: 6,text: 'Vira a cabeça para o algum som? (Vira para ambos os lados?)',answers: answers),
      denverRadio(index: 7,text: 'Vira a cabeça quando chama o nome? (Vira para ambos os lados?)',answers: answers),
    ];
    else if(fase == 2) return [
      denverRadio(index: 3,text: 'Fala OOO/AAH?',answers: answers),
      denverRadio(index: 4,text: 'Riso(Gargalhada)?',answers: answers),
      denverRadio(index: 5,text: 'Grita?',answers: answers),
      denverRadio(index: 6,text: 'Vira a cabeça para o algum som? (Vira para ambos os lados?)',answers: answers),
      denverRadio(index: 7,text: 'Vira a cabeça quando chama o nome? (Vira para ambos os lados?)',answers: answers),
      denverRadio(index: 8,text: 'Emite o sons "ba,da,ga..."?',answers: answers),
      denverRadio(index: 9,text: 'Imita sons?',answers: answers),
      denverRadio(index: 10,text: 'Emite duas vezes, como "papa, dada, mama, gaga...?"',answers: answers),
      denverRadio(index: 11,text: 'Emite três ou mais vezes, como "mamama, dadada, gagaga...?"',answers: answers),
      denverRadio(index: 12,text: 'Conta suas historias com sons não compreensíveis?',answers: answers),
      denverRadio(index: 13,text: 'Fala papa ou mama direncionando a figura da mãe ou do pai?',answers: answers),
    ];
    else if(fase == 3) return [
      denverRadio(index: 7,text: 'Vira a cabeça quando chama o nome? (Vira para ambos os lados?)',answers: answers),
      denverRadio(index: 8,text: 'Emite o sons "ba,da,ga..."?',answers: answers),
      denverRadio(index: 9,text: 'Imita sons?',answers: answers),
      denverRadio(index: 10,text: 'Emite duas vezes, como "papa, dada, mama, gaga...?"',answers: answers),
      denverRadio(index: 11,text: 'Emite três ou mais vezes, como "mamama, dadada, gagaga...?"',answers: answers),
      denverRadio(index: 12,text: 'Conta suas historias com sons não compreensíveis?',answers: answers),
      denverRadio(index: 13,text: 'Fala papa ou mama direncionando a figura da mãe ou do pai?',answers: answers),
    ];
    // ignore: curly_braces_in_flow_control_structures
    else if(fase == 4) return [
      denverRadio(index: 11,text: 'Emite três ou mais vezes, como "mamama, dadada, gagaga...?"',answers: answers),
      denverRadio(index: 12,text: 'Conta suas historias com sons não compreensíveis?',answers: answers),
      denverRadio(index: 13,text: 'Fala papa ou mama direncionando a figura da mãe ou do pai?',answers: answers),
      denverRadio(index: 14,text: 'Fala uma 1 palavra, além de papa ou mama? Exemplo: "Caca"',answers: answers),
      denverRadio(index: 15,text: 'Fala 2 palavras juntas, além de papa ou mama? Exemplo: "Caca chegou"',answers: answers),
      denverRadio(index: 16,text: 'Fala 3 palavras juntas, além de papa ou mama? Exemplo: "Caca chegou casa"',answers: answers),
    ];
    return getHabs(answers);
  }

  Widget denverRadio ({int? index, String? text, Map? answers}){

    SingingCharacter? _character2;

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
    } else FirebaseFirestore.instance.collection('users').doc(UID)
        .collection('denver').doc('LG').set(
        {}
    ).then((value) => null);


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.0,),
        textCTRST(
          stg1: 'Habilidade $index: ',
          stg2: text,
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
                          .collection('denver').doc('LG').update(
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
                          .collection('denver').doc('LG').update(
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
                          .collection('denver').doc('LG').update(
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
