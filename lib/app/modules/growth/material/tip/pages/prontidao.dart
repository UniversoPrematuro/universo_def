import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'dart:developer' as developer;


enum SingingCharacter { sim, nao}

class Prontidao extends StatelessWidget {
  String? idLogado;

  Future recoverUID() async { 
      FirebaseAuth auth = FirebaseAuth.instance;
      User usuarioLogado = auth.currentUser!;
      idLogado = usuarioLogado.uid;
    }


  @override
  Widget build(BuildContext context) {


  ConnectivityResult connectionStatus = ConnectivityResult.none;
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;
  var mounted;

  // @override
  // void initState() {
  //   super.initState();
  //   initConnectivity();

  //   _connectivitySubscription =
  //       _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  // }

  // @override
  // void dispose() {
  //   _connectivitySubscription.cancel();
  //   super.dispose();
  // }

  // Platform messages are asynchronous, so we initialize in an async method.

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {

      connectionStatus = result;

  }
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }


    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  
  


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
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: 
        StreamBuilder<DocumentSnapshot>(
          
          stream: FirebaseFirestore.instance.collection('users').doc(idLogado)
              .collection('gSigns').doc('QSTS').snapshots(),
          builder: (context, snapshot) {

            // var docData = snapshot.data as DocumentSnapshot<Map<dynamic, dynamic>>;
            // var map = Map<String, dynamic>.from(snapshot.data.data());
            // DocumentSnapshot snap = Map<dynamic, dynamic>.from(snapshot.data.data;) as DocumentSnapshot<Object?>;
            if(snapshot.hasData) {
              return ListView(
              padding: EdgeInsets.all(20.0),
              children: [ 
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Text(
                    'PARTE 1 - SINAIS DE PRONTIDÃO',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.0,),
                Text(
                  'Começamos a introdução a partir do momento em que o bebe apresenta alguns sinais fisiológicos que reconhecemos como sinais de prontidão. Eles irão nos dizer se bebe está preparado para receber alimentos, sejam sólidos ou pastoso!'
                      '\n\nVamos em frente!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20.0,),
                
                
                ...QSTs(snapshot.data!.get("answers"), context) 
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
  
    //PROMOÇÃO DE SAUDE E NÃO ESTA CONSEGUINDO SOMAR OS CREDITOS
    // 16 992024581
    // RGM 728753
    // SENHA LF007996*
    //NOME LUIS FERNANDO GONÇALVES LIMA

    
  }


  Widget grRadio ({int index = 0, String? text}){
    SingingCharacter? character2; 
    

    if(index == 1 || index == 2 || index == 6 || index == 7 || index == 4){
      character2 = SingingCharacter.sim;
    } else {
      character2 = SingingCharacter.nao;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0,),
        Text(
            text!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.sim,
                    groupValue: character2,
                    onChanged: (SingingCharacter? value) {}
                ),
                Text('Sim')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.nao,
                    groupValue: character2,
                    onChanged: (SingingCharacter? value) {}
                ),
                Text('Não')
              ],
            ),
          ],
        ),
        SizedBox(height: 15.0,),
      ],
    );

  }

  List<Widget> QSTs(Map answers, BuildContext context){
   
    // Map<dynamic, dynamic> map = snapshot.data as Map<dynamic, dynamic>;
    bool? ready;
    var result = {true:0,false:0};
    if(answers != null) {
      for (var x in answers.values) {
                if (x == true || x ==  false)result[x] = !result.containsKey(x) ? (1) : (result[x]! + 1);
              }

      if(result[true]! + result[false]! == 8 && result[true]! >= 5 && answers["n1"] == true &&
          answers["n2"] == true && answers["n6"] == true && answers["n7"] == true) {
        ready = true;
      } else if(result[true]! + result[false]! == 8) {
        ready = false;
      }
    }

    return [
      gSignsRadio(index: 1,text: 'Capacidade para sentar sem apoio ou ajuda:',answers: answers,context: context),
      gSignsRadio(index: 2,text: 'Sustentar a cabeça e o tronco sozinho:',answers: answers,context: context),
      gSignsRadio(index: 3,text: 'Segurar objetos com as mãos:',answers: answers,context: context),
      gSignsRadio(index: 4,text: 'Explorar estímulos ambientais:',answers: answers,context: context),
      gSignsRadio(index: 5,text: 'Interesse pelos objetos (curiosidade):',answers: answers,context: context),
      gSignsRadio(index: 6,text: 'Leva objetos até a boca:',answers: answers,context: context),
      gSignsRadio(index: 7,text: 'Movimento voluntário da língua e lábios:',answers: answers,context: context),
      gSignsRadio(index: 8,text: 'Interesse pelos responsáveis na hora das refeições:',answers: answers,context: context),

      SizedBox(height: 40.0,),
      autoText(answers),

      SizedBox(height: 40.0,),
      Row(
        children: [
          Expanded(
            child: Card(
              color: Color.fromARGB(255, 102, 188, 89),
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Sim:  ${result[true]!/8*100}%',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
              ),
            ),
          ),
          Expanded(
            child: Card(
              color: Color.fromARGB(255, 192, 60, 39),
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Não:  ${result[false]!/8*100}%',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
              ),
            ),

          ),
        ],
      ),
      ready != null?Card(
        color: ready?Color.fromARGB(255, 102, 188, 89):Color.fromARGB(255, 192, 60, 39),
        child: Container(
          alignment: Alignment.center,
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Bebe ${ready? '':'não'} está pronto',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
        ),
      ):Container(),
    ];
  }


  Widget gSignsRadio ({int index = 0, String? text, Map? answers,BuildContext? context}){

    String? idLogado;
    
    SingingCharacter? character2;
    String? date = 'Ola mundo';
    bool aux;

    Future recoverUID() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      User usuarioLogado = auth.currentUser!;
      idLogado = usuarioLogado.uid;
    }

    aux = true;
    if (answers == null || answers.length == 0 || answers['date'] == null){
      aux = true;
    } else if(DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays >= 10
        || DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays == 0
    ) {aux = true;} else {aux = false;}

    if(answers != null){
      switch(answers['n$index']){
        case true:
          character2 = SingingCharacter.sim;
          break;
        case false:
          character2 = SingingCharacter.nao;
          break;
        default:
          character2 = null;
      }
    } else {
      FirebaseFirestore.instance.collection('users').doc(idLogado)
        .collection('gSigns').doc('QSTS').set(
        {
          "answers": answers
        }
    ).then((value) => null);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.0,),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              text: text,
              children: <TextSpan>[
                TextSpan(
                    text: ' \u279CClique aqui e veja a figura.',
                    recognizer: TapGestureRecognizer()
                      ..onTap = (){Navigator.of(context!).push(MaterialPageRoute(builder: ((context) => displayIMG(index))));},
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                    )
                ),
              ]
          ),
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
                    groupValue: character2,
                    
                    onChanged: aux?(SingingCharacter? value) {
                      answers!.length >= 8 ? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString() : date = null;
                      FirebaseFirestore.instance.collection('users').doc(idLogado).collection('gSigns').doc('QSTS').update({'n$index':true,'date':date}).then((value){
                        value = null;
                      });
                    } : null
                    // onChanged: aux?(SingingCharacter value) {
                    //   answers!.length >= 8? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString(): date = null;
                    //   FirebaseFirestore.instance.collection('users').doc(idLogado)
                    //       .collection('gSigns').doc('QSTS').update(
                    //       {'n$index':true,'date':date}
                    //   ).then((value) => null);
                    // }:null
                ),
                Text('Sim')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: SingingCharacter.nao,
                    groupValue: character2,
                    onChanged: aux?(SingingCharacter? value) {
                      answers!.length >= 8 ? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString() : date = null;
                      FirebaseFirestore.instance.collection('users').doc(idLogado).collection('gSigns').doc('QSTS').update({'n$index':false,'date':date}).then((value) => null);
                    } : null
                    // onChanged: aux?(SingingCharacter value) {
                    //   answers!.length >= 8? date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString(): date = null;
                    //   FirebaseFirestore.instance.collection('users').doc(UID)
                    //       .collection('gSigns').doc('QSTS').update(
                    //       {'n$index':false,'date':date}
                    //   ).then((value) => null);
                    // }:null
                ),
                Text('Não')
              ],
            ),
          ],
        ),
        SizedBox(height: 15.0,),
      ],
    );
  }

  Widget displayIMG(int index){
    List<String> img = ['fig1012-6.jpeg','figg1012-13.jpeg','figg1012-12.jpeg',
      'fig1012-9.jpeg','figg1012-19.jpeg','figg1012-12.jpeg','fig1012-2.jpeg','figg1012-13.jpeg'];
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
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: Image.asset('images/${img[index-1]}'),
    );
  }

  Widget autoText(Map answers) {

    if(answers == null || answers.length == 0 || answers['date'] == null){
      return Text(
        "Responda as questões acima e resultado será apresentado abaixo:"
        ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
      );
    }else if(DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays >= 10
        || DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays == 0
    ){
      return Text(
        "Responda as questões acima e resultado será apresentado abaixo:"
        ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
      );
    }else {
      return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            text: 'Aviso: ',
            children: <TextSpan>[
              TextSpan(
                  text: 'Você poderá alterar as respostas daqui a ',
                  style: TextStyle(fontWeight: FontWeight.normal,)
              ),
              TextSpan(
                text: '${10-DateTime.now().difference(DateFormat('dd/MM/yyyy').parse(answers['date'])).inDays}',
              ),
              TextSpan(
                  text: ' dias.',
                  style: TextStyle(fontWeight: FontWeight.normal,)
              ),
            ]
        ),
      );
    }

  }
}