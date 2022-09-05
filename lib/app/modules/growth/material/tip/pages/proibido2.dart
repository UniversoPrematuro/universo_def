import 'package:flutter/material.dart';


class Proibido2 extends StatelessWidget {
  const Proibido2({super.key});





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
                'PARTE 13 – ALIMENTOS PROIBIDOS ATÉ 2 ANOS',
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
                  text: "Alimentos ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'PROIBIDOS', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                    TextSpan(text: ' até os 2 anos:'),
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
                    TextSpan(text: '  Mel – até os 2 anos\n'),
                    TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                    TextSpan(text: '  Açúcar e preparações ricas em açúcar - até os 2 anos\n'),
                    TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                    TextSpan(text: '  Refrigerantes\n'),
                    TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                    TextSpan(text: '  Industrializados\n'),
                  ],
                )
            ),
          ],
        )
    );
  }


}