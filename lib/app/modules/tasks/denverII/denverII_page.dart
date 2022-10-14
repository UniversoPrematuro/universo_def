import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/denverII/denverII_store.dart';
import 'package:flutter/material.dart';

enum SingingCharacter {sim, nao, parcial}

class DenverIIPage extends StatefulWidget {
  final String title;
  const DenverIIPage({Key? key, this.title = 'DenverIIPage'}) : super(key: key);
  @override
  DenverIIPageState createState() => DenverIIPageState();
}
class DenverIIPageState extends State<DenverIIPage> {
  final DenverIIStore store = Modular.get();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String? idLogado;

  @override
  void initState() {
    // TODO: implement initState
    User? usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {


    // if(store.page! <= 9) {
    //   store.fase!=1;
    // } else if(store.page! >= 10 && store.page! <= 18) {
    //   store.fase = 2;
    // } else if(store.page! >= 19 && store.page! <= 27) {
    //   store.fase = 3;
    // } else if(store.page! >= 28 && store.page! <= 36) {
    //   store.fase = 4;
    // }

    // print('A store.fase! é: ${store.fase!}');

    return 
      Container(
        color: Colors.white,
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('users').doc(idLogado)
                .collection('denver').snapshots(),
            //Firestore.instance.collection('users').document(UID)
              //  .collection('denver').document('PS').snapshots(),
            builder: (_, snapshot){

              print("Snapshot: $snapshot");

              if(snapshot.hasData) {
                for (var element in snapshot.data!.docs) {
                        print("${element.id}: ${element.data()}");
                        if(element.id == "PS") store.answers = element.data() as Map?;
                      }
              }

              print("answers: ${store.answers}");

              // ignore: curly_braces_in_flow_control_structures
              if(snapshot.hasData) {
                return ListView(
                  padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0),
                    child: Text(
                      'Avaliação Pessoal - Social',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // ...getHabs(store.answers!),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right:0.0,bottom:20.0,top:20.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton.icon(

                        // elevation: 5,
                        // color: Color.fromARGB(255, 101, 188, 89),
                        // shape: StadiumBorder(),
                        label: const Text(
                          'Próxima avaliação',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                        icon: Icon(Icons.arrow_forward,color: Colors.white,),
                        onPressed: (){
                          // Navigator.of(context).pushReplacement(
                          //     MaterialPageRoute(
                          //         builder: ((context) => DenverIIMF())
                          //     )
                          // );
                        },
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20.0,right:0.0,bottom:20.0,top:0.0),
                  //   child: Align(
                  //     alignment: Alignment.bottomRight,
                  //     child: ElevatedButton.icon(

                        
                  //       label: Text(
                  //         'Ver resultados',
                  //         style: TextStyle(
                  //             fontSize: 24.0,
                  //             fontWeight: FontWeight.w500,
                  //             color: Colors.white
                  //         ),
                  //       ),
                  //       icon: Icon(Icons.assessment,color: Colors.white,),
                  //       onPressed: confirmAnswrs(snapshot.data!.docs, store.fase!)?(){
                  //         // Navigator.of(context).push(
                  //         //     MaterialPageRoute(
                  //         //         builder: ((context) => StackedBarTargetLineChart(UID,'GR'))
                  //         //     )
                  //         // );
                  //       }:null,
                  //     ),
                  //   ),
                  // ),
                  // confirmAnswrs(snapshot.data!.docs, store.fase!)?Container():
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
        ),
      );

    
  }
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

  Widget denverRadio ({int? index, String? text, Map? answers}){
    FirebaseAuth auth = FirebaseAuth.instance;

    SingingCharacter? _character2 = null;

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
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                        {'hab$index':'sim'}
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
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                          {'hab$index':'nao'}
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
                      FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid)
                          .collection('denver').doc('PS').update(
                          {'hab$index':'par'}
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

  Future<List<Widget>> getHabs(Map answers) async {
    final DenverIIStore store = Modular.get();

    // ignore: curly_braces_in_flow_control_structures
    if(store.fase! == 1) return [
      denverRadio(index: 1,text: 'Observa o rosto, olha para você?',answers: answers),
      denverRadio(index: 2,text: 'Sorrir em resposta, quando conversa com ',answers: answers),
      denverRadio(index: 3,text: 'Sorrir espontaneamente?',answers: answers),
      denverRadio(index: 4,text: 'Observa sua própria mão?',answers: answers),
      denverRadio(index: 5,text: 'Tenta alcançar um brinquedo?',answers: answers),
    ];
    // ignore: curly_braces_in_flow_control_structures
    else if(store.fase == 2) return [
      denverRadio(index: 3,text: 'Sorrir espontaneamente?',answers: answers),
      denverRadio(index: 4,text: 'Observa sua própria mão?',answers: answers),
      denverRadio(index: 5,text: 'Tenta alcançar um brinquedo?',answers: answers),
      denverRadio(index: 6,text: 'Come sozinho?',answers: answers),
    ];
    else if(store.fase == 3) {
      return [
      denverRadio(index: 7,text: 'Joga bola com o examinador?',answers: answers),
      denverRadio(index: 8,text: 'Imita a ação de uma pessoa?',answers: answers),
      denverRadio(index: 9,text: 'Da "tchau"?',answers: answers),
      denverRadio(index: 10,text: 'Mostra que quer?',answers: answers),
      denverRadio(index: 11,text: 'Bate palmas?',answers: answers),
      denverRadio(index: 12,text: 'Segura uma xícara ou copo e  o conteúdo sozinho(a)?',answers: answers),
    ];
    } else if(store.fase == 4) {
      return [
      denverRadio(index: 7,text: 'Joga bola com o examinador?',answers: answers),
      denverRadio(index: 8,text: 'Imita a ação de uma pessoa?',answers: answers),
      denverRadio(index: 9,text: 'Da "tchau"?',answers: answers),
      denverRadio(index: 10,text: 'Mostra que quer?',answers: answers),
      denverRadio(index: 11,text: 'Bate palmas?',answers: answers),
      denverRadio(index: 12,text: 'Segura uma xícara ou copo e  o conteúdo sozinho(a)?',answers: answers),
    ];
    }
    return getHabs(answers);
  }

  bool confirmAnswrs(List<QueryDocumentSnapshot> docs, int fase){
    final DenverIIStore store = Modular.get();
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

    int max = store.fase! - 1;

    Map mp = Map();

    print('\n');
    for (var m in docs) {
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
                // List<int> habs = m.data()!.keys.map((x)=>int.parse(x.substring(3))).toList();
                // print(habs.where((e) => e <= (l[max]) && e >= (k[max])));
                // print(habs.where((e) => e <= (l[max]) && e >= (k[max])).length);
                // print(l[max] - (k[max]) + 1);
                // print("${(habs.where((e) => e <= (l[max]) && e >= (k[max])).length) == (l[max] - (k[max]) + 1)}");

                // test = test && ((habs.where((e) => e <= (l[max]) && e >= (k[max])).length) == (l[max] - (k[max]) + 1));
              }
            }

    if(docs.length == 0) test = false;
    return(test);
  }

