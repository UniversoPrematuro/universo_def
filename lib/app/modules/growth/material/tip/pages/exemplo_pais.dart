
import 'package:flutter/material.dart';


class ExemploPais extends StatelessWidget {
  const ExemploPais({Key? key}) : super(key: key);






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
              'PARTE 2 – EXEMPLO DOS PAIS – ALIMENTOS E AMBIENTE – DICAS',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40.0,),

          const Text("DICAS:",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
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
                  TextSpan(text: '  Quando estiver próximo aos 6 meses de idade corrigida, coloque o bebe junto da família nos horários das refeições.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Faça essas refeições em um ambiente tranquilo, sem distrações, sem conversas que provoque discussões mais sérias. Este momento é para relaxarem e manter uma reunião em família.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Compre um cadeirão que tenha sinto de segurança, para que não ocorra risco de acidentes evitáveis.\n'),
                  TextSpan(text: '\u2055', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Antes do início da introdução alimentar compre os utensílios a serem usados e deixe bebe se familiarizar com os seus pertences. Brincar com a colher, com o prato e com o copinho.\n'),
                ],
              )
          ),
        ],
      )
    );
  }



}