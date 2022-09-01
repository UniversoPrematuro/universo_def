
import 'package:flutter/material.dart';

class Reacoes extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images1/LogoTop.png"),
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
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 11 – REAÇOES ALERGICAS',
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
            '     Você sabia que existe alimentos que podem desencadear alergias ao bebe? Por isso, devemos oferecer estes alimentos, mas com um certo cuidado! Nesta fase peça orientação para o profissional de saúde que acompanha a introdução alimentar do bebe.'
                '\n     Será importante dar início a oferta destes alimentos com uma pequena quantidade e ir aumentando aos poucos.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),

          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: 'Segue os alimentos com maior risco alérgico:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: '\n\n    \u2055	',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: 'Ovo'),
                  TextSpan(text: '\n    \u2055	',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: 'Peixe'),
                  TextSpan(text: '\n    \u2055	',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: 'Amendoim'),
                  TextSpan(text: '\n    \u2055	',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: 'Castanhas'),
                  TextSpan(text: '\n\nEm caso de '),
                  TextSpan(text: 'reações alérgica',style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '(imagem abaixo) avise o pediatra e vá até ao pronto socorro para tomar o antialérgico específico! Siga corretamente a prescrição médica.'),
                ],
              )
          ),
          Image.asset('images1/figg1012-20.jpeg'),
        ],
      )
    );
  }



}