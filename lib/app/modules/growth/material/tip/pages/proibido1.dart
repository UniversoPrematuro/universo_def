// ignore_for_file: unused_element

import 'package:flutter/material.dart';


class Proibido1 extends StatelessWidget {
  const Proibido1({super.key});




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images1/LogoTop.png"),
          const SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const SizedBox(height: 20.0,),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 12 - ALIMENTOS PROIBIDOS ATE 1 ANO',
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
              text: "Os ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: 'frutos do mar', style: TextStyle(color: Color.fromARGB(255, 192, 60, 39))),
                TextSpan(text: ' mar estão proibidos para crianças menores de 1 ano, devendo ser oferecidos apenas '),
                TextSpan(text: 'após 1 ano de idade', style: TextStyle(color: Color.fromARGB(255, 192, 60, 39))),
                TextSpan(text: '. Assim como outros alimentos listados abaixo.'),

                TextSpan(text: '\n\nAlimentos '),
                TextSpan(text: 'PROIBIDOS', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                TextSpan(text: ' até os 1 ano:'),
              ],
            )
          ),
          const SizedBox(height: 20.0,),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' Sal (nem pitada) – o sódio já está presente em todos os alimentos in natura!\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Oleaginosas e leites vegetais (castanhas, nozes, macadâmia, gergelim, amendoim e etc) – desde que tenha indicação medica ou de uma nutricionista.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Leite de vaca e derivados (iogurte, queijo, manteiga), leite de ovelha, cabra e etc...\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Água de coco como substituto da água.\n'),
                  TextSpan(text: '  Café, cafeína.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Adoçantes.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Cogumelo.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Pimenta, curry e noz moscada.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Frutos do mar (lula, camarão, polvo, lagosta, mariscos) até os 2 anos – o que NÃO inclui os peixes, que devem ser dados desde os 6 meses.\n'),
                ],
              )
          ),
        ],
      )
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split('*').map((name) {
        return Container(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 20.0),
          ),
        );
      }).toList(),
    );
  }

}