import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:collection';
import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/flutter.dart' as charts;

import 'teste2.dart';
// import 'package:up_prttp_v4/teste2.dart';

class StackedBarTargetLineChart extends StatelessWidget {
  //final List<charts.Series> seriesList;
  //final bool animate;
  String UID;
  String area;

  StackedBarTargetLineChart(this.UID, this.area);

  /// Creates a stacked [BarChart] with sample data and no transition.
  /*factory StackedBarTargetLineChart.withSampleData() {
    return new StackedBarTargetLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }*/


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
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [

          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'Resultados',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0,),

          FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance.collection('users').doc(UID)
                .collection('denver').get(),
            builder: (context, snapshot) {
              if(snapshot.hasData) return SizedBox(
                height: 400.0,
                child: charts.BarChart(_createDenverData(snapshot.data!.docs,area),
                    animate: true,
                    barGroupingType: charts.BarGroupingType.stacked,
                  primaryMeasureAxis: charts.NumericAxisSpec(
                      tickProviderSpec: charts.BasicNumericTickProviderSpec(
                        // Make sure we don't have values less than 1 as ticks
                        // (ie: counts).
                          dataIsInWholeNumbers: true,
                          // Fixed tick count to highlight the integer only behavior
                          // generating ticks [0, 1, 2, 3, 4].
                          desiredTickCount: 10),
                    ),
                    animationDuration: Duration(seconds: 2),
                    customSeriesRenderers: [
                      charts.BarTargetLineRendererConfig<String>(
                        // ID used to link series to this renderer.
                          customRendererId: 'customTargetLine',
                          groupingType: charts.BarGroupingType.stacked,
                      )
                    ],
                  selectionModels: [
                    charts.SelectionModelConfig(
                      type: charts.SelectionModelType.info,
                      updatedListener: (model){
                        if(model.selectedDatum.isNotEmpty){
                          //print(model.selectedDatum.first.datum.year);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (
                                          (context) => StackedBarTargetLineChart(UID,model.selectedDatum.first.datum.year)
                                  )
                              )
                          );
                        }
                      }
                    ),
                  ],
                ),
              );
              else return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                ),
              );
            }
          ),
          SizedBox(height: 10.0,),

          RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              text: 'PS:',
              children: [
                TextSpan(text: ' Pessoal - Social\n',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: 'MF:'),
                TextSpan(text: ' Motor Fino - Adaptativo\n',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: 'MG:'),
                TextSpan(text: ' Motor Grosso\n',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: 'LG:'),
                TextSpan(text: ' Linguagem',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: '\n\nVerde:',style: TextStyle(color: Colors.green)),
                TextSpan(text: ' Quantidade de respostas SIM',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: '\nAmarelo:',style: TextStyle(color: Colors.amber)),
                TextSpan(text: ' Quantidade de respostas PARCIAL',style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(text: '\nVermelho:',style: TextStyle(color: Colors.redAccent)),
                TextSpan(text: ' Quantidade de respostas NÃO',style: TextStyle(fontWeight: FontWeight.normal)),
              ]
            ),
          ),
          SizedBox(height: 20.0,),
          MaterialButton(
            child: Card(
              elevation: 10.0,
              child: Container(
                child: Text(
                  'Resultado profissional',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.all(20.0),
              ),
              color: Color.fromARGB(255, 102, 188, 89),
            ),
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AreaAndLineChart(UID,area))));},
          )
        ],
      ),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<resultData, String>> _createDenverData(List<QueryDocumentSnapshot> docs, String area) {

    int x = 0;
    int y = 0;
    bool fail = false;
    Map m = Map();

    final List<resultData> yesData = [];
    final List<resultData> parData = [];
    final List<resultData> noData = [];
    final List<resultData> midData = [];

    docs.forEach((doc){
      if(doc.id != "result"){

        //print("\n\nRespostas de ${doc.id}: ${doc.data()}");
        var map = Map();
        // doc.data()!.value.toList().forEach((x) => map[x] = !map.containsKey(x) ? (1) : (map[x] + 1));

        if(!map.containsKey('sim'))map['sim']=0;
        if(!map.containsKey('par'))map['par']=0;
        if(!map.containsKey('nao'))map['nao']=0;

        // m = SplayTreeMap.from(doc.data(), (a, b) => int.parse(a.substring(3)).compareTo(int.parse(b.substring(3))));

        m.forEach(
                (key, value) {
              if(value == "nao") {
                x = x + 1;
              } else {x = 0;}
              if(x >= 3) fail = true;
            }
        );

        if(area == "GR") {
          //print('${doc.id}: $map');
          yesData.add(resultData(doc.id, map['sim'].toDouble()));
          noData.add(resultData(doc.id, map['nao'].toDouble()));
          parData.add(resultData(doc.id, map['par'].toDouble()));

          if(fail){
            midData.add(resultData(doc.id,map["nao"]/2));
          }else if(map["sim"] > map["par"]){
            midData.add(resultData(doc.id,map["nao"]+map["par"]+map["sim"]/2));
          }else if(map["sim"] == map["par"]){
            midData.add(resultData(doc.id,(map["nao"].toDouble()+map["par"]).toDouble()));
          } else midData.add(resultData(doc.id,map["nao"]+map["par"]/2));

        } else if(doc.id == area){
          yesData.add(resultData(doc.id, map['sim'].toDouble()));
          noData.add(resultData(doc.id, map['nao'].toDouble()));
          parData.add(resultData(doc.id, map['par'].toDouble()));

          if(fail){
            midData.add(resultData(doc.id,map["nao"]/2));
          }else if(map["sim"] > map["par"]){
            midData.add(resultData(doc.id,map["nao"]+map["par"]+map["sim"]/2));
          }else if(map["sim"] == map["par"]){
            midData.add(resultData(doc.id,(map["nao"].toDouble()+map["par"]).toDouble()));
          } else midData.add(resultData(doc.id,map["nao"]+map["par"]/2));
        }

      }
    });

    return [
      charts.Series<resultData, String>(
        id: 'Desktop',
        domainFn: (resultData sales, _) => sales.year,
        measureFn: (resultData sales, _) => sales.sales,
        data: yesData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault.lighter,
      ),
      charts.Series<resultData, String>(
          id: 'Tablet',
          domainFn: (resultData sales, _) => sales.year,
          measureFn: (resultData sales, _) => sales.sales,
          data: parData,
          colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.lighter
      ),
      charts.Series<resultData, String>(
          id: 'Mobile',
          domainFn: (resultData sales, _) => sales.year,
          measureFn: (resultData sales, _) => sales.sales,
          data: noData,
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter
      ),
      charts.Series<resultData, String>(
        id: 'Desktop Target Line',
        domainFn: (resultData sales, _) => sales.year,
        measureFn: (resultData sales, _) => sales.sales,
        data: midData,
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    ];
  }


}

/// Sample ordinal data type.
class resultData {
  final String year;
  final double sales;

  resultData(this.year, this.sales);
}