
/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:collection';

import 'app/modules/tasks/tasks_store.dart';

class AreaAndLineChart extends StatelessWidget {

  // String auth.currentUser!.uid;
  FirebaseAuth auth = FirebaseAuth.instance;
  String area;
  String uid;
  TasksStore tStore = Modular.get();
  AreaAndLineChart(this.area, this.uid);
  
  @override
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images/LogoTop.png"),
          const SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Desenvolvimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection('users').doc(tStore.uid)
            .collection('denver').get(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return ListView(
            padding: const EdgeInsets.all(20.0),
            children: [

              const SizedBox(height: 20.0,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'Resultado Profissioal',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40.0,),

              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    text: 'Gráfico que apresenta o desenvolvimento longitudinal das áreas:',
                    children: [
                      TextSpan(text: ' Pessoal - Social',style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ','),
                      TextSpan(text: ' Motor Fino - Adaptativo',style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ','),
                      TextSpan(text: ' Motor Grosso',style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' e'),
                      TextSpan(text: ' Linguagem',style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ', onde o eixo das abscissas (horizontal) representa os meses e as ordenadas (vertical)'
                          ' representa a quantidade de habilidades para cada período.'),
                      TextSpan(text: '\n\nO resultado em função do tempo é observado na linha '),
                      TextSpan(text:'Azul',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueAccent)),
                      TextSpan(text: '. A área e linha '),
                      TextSpan(text:'Amarela',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.amber)),
                      TextSpan(text: ' representam, respectivamente, a quantidade ideal de habilidades e o limite mínimo (nível dealerta).'),
                    ]
                ),
              ),

              const SizedBox(height: 40.0,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'LINGUAGEM',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 123, 90)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.w900),),
                  Text(' Resultado   ',style: TextStyle(fontSize: 16,)),
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.amberAccent,fontWeight: FontWeight.w900),),
                  Text(' Alerta',style: TextStyle(fontSize: 16,))
                ],
              ),
              SizedBox(
                height: 400.0,
                child: charts.LineChart(_createDenverLineData(snapshot.data!.docs,'LG'),
                    animate: true,
                    animationDuration: const Duration(seconds: 2),
                    customSeriesRenderers: [
                      charts.LineRendererConfig(
                        // ID used to link series to this renderer.
                          customRendererId: 'customArea',
                          includeArea: true,
                          stacked: true),
                    ]),
              ),
              const SizedBox(height: 40.0,),

              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'MOTOR FINO-ADAPTATIVO',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 123, 90)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.w900),),
                  Text(' Resultado   ',style: TextStyle(fontSize: 16,)),
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.amberAccent,fontWeight: FontWeight.w900),),
                  Text(' Alerta',style: TextStyle(fontSize: 16,))
                ],
              ),
              SizedBox(
                height: 400.0,
                child: charts.LineChart(_createDenverLineData(snapshot.data!.docs,"MF"),
                    animate: true,
                    animationDuration: const Duration(seconds: 2),
                    customSeriesRenderers: [
                      charts.LineRendererConfig(
                        // ID used to link series to this renderer.
                          customRendererId: 'customArea',
                          includeArea: true,
                          stacked: true),
                    ]),
              ),
              const SizedBox(height: 40.0,),

              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'MOTOR-GROSSO',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 123, 90)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.w900),),
                  Text(' Resultado   ',style: TextStyle(fontSize: 16,)),
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.amberAccent,fontWeight: FontWeight.w900),),
                  Text(' Alerta',style: TextStyle(fontSize: 16,))
                ],
              ),
              SizedBox(
                height: 400.0,
                child: charts.LineChart(_createDenverLineData(snapshot.data!.docs,"MG"),
                    animate: true,
                    animationDuration: const Duration(seconds: 2),
                    customSeriesRenderers: [
                      charts.LineRendererConfig(
                        // ID used to link series to this renderer.
                          customRendererId: 'customArea',
                          includeArea: true,
                          stacked: true),
                    ]),
              ),
              const SizedBox(height: 40.0,),

              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'PESSOAL-SOCIAL',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 123, 90)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.w900),),
                  Text(' Resultado   ',style: TextStyle(fontSize: 16,)),
                  Text('-',style: TextStyle(fontSize: 40,color: Colors.amberAccent,fontWeight: FontWeight.w900),),
                  Text(' Alerta',style: TextStyle(fontSize: 16,))
                ],
              ),
              SizedBox(
                height: 400.0,
                child: charts.LineChart(_createDenverLineData(snapshot.data!.docs,"PS"),
                    animate: true,
                    animationDuration: const Duration(seconds: 2),
                    customSeriesRenderers: [
                      charts.LineRendererConfig(
                        // ID used to link series to this renderer.
                          customRendererId: 'customArea',
                          includeArea: true,
                          stacked: true),
                    ],),
              ),
              const SizedBox(height: 20.0,),
            ],
          );
          } else {
            return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
          );
          }
        }
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearData, int>> _createDenverLineData(List<QueryDocumentSnapshot> docs,String area) {

    List<LinearData> resultData = [LinearData(0, 0),];
    List<LinearData> minData = [LinearData(0, 0),];
    List<LinearData> maxData = [LinearData(0, 0),];

    Map m = {};
    double count = 0;
    int cFail = 0;
    List<int> fails = [];

    List<int> lvl = [];
    List<int> months = [3,6,9,12];
    List<double> res = [];

    switch (area) {
      case 'LG': {lvl = [7,13,13,16];}
      break;
      case 'MF': {lvl = [7,13,14,16];}
      break;
      case 'MG': {lvl = [10, 12, 16, 18];}
      break;
      case 'PS': {lvl = [5,6,12,12];}
      break;
    }

    // for (var doc in docs) {
    //   if(doc.id == area){
    //     m = SplayTreeMap.from(doc.data(), (a, b) => int.parse(a.substring(3)).compareTo(int.parse(b.substring(3))));
    //   }
    // }

    //m={};

    int min = lvl.lastIndexWhere((i) => i < int.parse(m.keys.first.substring(3)));
    int max = lvl.lastIndexWhere((i) => i <= int.parse(m.keys.last.substring(3)));
    if(min < 0) {
      min = 0;
    } else {
      min = min + 1;
    }
    if(max < 0) {
      max = 4;
    } else {
      max = max + 1;
    }
    months = months.sublist(min,max);
    lvl =  lvl.sublist(min,max);


    for( var i = 0 ; i <= lvl.length-1; i++ ) {
      m.forEach(
              (key, value) {
                if(i == 0 && int.parse(key.substring(3)) <= lvl[i]){
                  if(value == 'sim')count = count + 1;
                  if(value == 'par')count = count + 0.5;
                }
                else if(int.parse(key.substring(3)) <= lvl[i] && int.parse(key.substring(3)) > lvl[i-1]){
                  if(value == 'sim')count = count + 1;
                  if(value == 'par')count = count + 0.5;
                }

                if(value == "nao") {
                  cFail = cFail + 1;
                } else {cFail = 0;}
                if(cFail >= 3) {
                  if(i == fails.length)fails.add(cFail);
                }

                if((int.parse(key.substring(3)) == lvl[i]) &&  (i == fails.length))fails.add(cFail);
              }
      );

      res.add(count);
      resultData.add(LinearData(months[i], count));

      double u = res[i]-2+fails[i]-lvl[i].toDouble();
      if(u + lvl[i].toDouble() < 0) u=-lvl[i].toDouble();


      !fails.contains(3)?
          minData.add(LinearData(months[i], u)):
          minData.add(LinearData(months[i], res[i]+1.toDouble()-lvl[i].toDouble()));

      maxData.add(LinearData(months[i], lvl[i].toDouble()));


      print('Fails: $fails');


    }

    return [

      charts.Series<LinearData, int>(
        id: 'Alerta',
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.darker,
        domainFn: (LinearData quant, _) => quant.month,
        measureFn: (LinearData quant, _) => quant.quant,
        data: maxData,
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customArea'),

      charts.Series<LinearData, int>(
        id: 'Alerta',
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.darker,
        domainFn: (LinearData quant, _) => quant.month,
        measureFn: (LinearData quant, _) => quant.quant,
        data: minData,
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customArea'),

      charts.Series<LinearData, int>(
        id: 'Resultado',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearData quant, _) => quant.month,
        measureFn: (LinearData quant, _) => quant.quant,
        data: resultData,
      ),

    ];
  }
}

/// Sample linear data type.
class LinearData {
  final int month;
  final double quant;

  LinearData(this.month, this.quant);
}
