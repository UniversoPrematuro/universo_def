// ignore_for_file: file_names, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:universo_def/teste.dart';

class DenverIIRS extends StatelessWidget {
  // String? ;
  DenverIIRS({super.key});

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const <Widget>[
            // Image.asset("images/LogoTop.png"),
            SizedBox(
              width: 10.0,
            )
          ],
          centerTitle: true,
          title: const Text(
            'Desenvolvimento',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          elevation: 1.5,
        ),
        body: FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance
              .collection('users')
              .doc(auth.currentUser!.uid)
              .collection('denver')
              .get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              bool aux = false;
              for (var element in snapshot.data!.docs) {
                if (element.id == 'result') {
                  aux = true;
                }
                print(aux);
              }

              for (var doc in snapshot.data!.docs) {
                if (doc.id != "result") {
                  var map = {};
                  // doc.data.values.toList().forEach((x) => map[x] = !map.containsKey(x) ? (1) : (map[x] + 1));

                  FirebaseFirestore.instance
                      .collection("users")
                      .doc(auth.currentUser!.uid)
                      .collection("denver")
                      .doc("result")
                      .set({doc.id: map});
                }
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Observer(builder: (_) {
                      return MaterialButton(
                        child: const Text('Resultado para mãe'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) =>
                                  StackedBarTargetLineChart(auth, "GR"))));
                        },
                      );
                    }),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                ),
              );
            }
          },
        ));
  }

  /// Create series list with multiple series
  // ignore: unused_element
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    final tableSalesData = [
      OrdinalSales('2014', 25),
      OrdinalSales('2015', 50),
      OrdinalSales('2016', 10),
      OrdinalSales('2017', 20),
    ];

    final mobileSalesData = [
      OrdinalSales('2014', 10),
      OrdinalSales('2015', 50),
      OrdinalSales('2016', 50),
      OrdinalSales('2017', 45),
    ];

    final desktopTargetLineData = [
      OrdinalSales('2014', 4),
      OrdinalSales('2015', 20),
      OrdinalSales('2016', 80),
      OrdinalSales('2017', 65),
    ];

    return [
      // Blue bars with a lighter center color.
      charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        fillColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
      ),
      // Solid red bars. Fill color will default to the series color if no
      // fillColorFn is configured.
      charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
      ),
      // Hollow green bars.
      charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        fillColorFn: (_, __) => charts.MaterialPalette.transparent,
      ),

      charts.Series<OrdinalSales, String>(
        id: 'Desktop Target Line',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopTargetLineData,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
