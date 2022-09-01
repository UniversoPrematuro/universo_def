import 'package:flutter/material.dart';


class Congelamento extends StatelessWidget {
  const Congelamento({Key? key}) : super(key: key);





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
              'PARTE 10 – CONGELAMENTO E DESCONGELAMENTO DO ALIMENTO',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40.0,),

          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Congelamento:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '  Para congelar os alimentos o ideal é colocar em porções pequenas e separadas por ingredientes. Para isso, podemos utilizar potes pequenos ou forminhas de cubos de gelos. Sendo dessa forma mais fácil manter uma alimentação variada.'
                      '\n     Se congelar na forminha de gelo alimentos variados, podem juntos compor uma refeição. Exemplo: Um cubinho de batata, um de abóbora, um de grão de bico, um de frango desfiado, um de espinafre e está pronta uma refeição completa.'
                      '\n     Para servir a refeição do bebe, devemos sempre deixar separados os alimentos no prato, assim poderá começar desde cedo a identificar os sabores, os cheiros e as cores de cada alimento.'),
                  TextSpan(text: '\nDescongelamento:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: '\n\u2055	E como podemos descongelar? '
                      '\n     •	Você pode tirar pela manhã os potinhos do freezer e coloque-os na geladeira ou também pode aquecer em banho maria.'
                    '\n     •	O descongelamento em temperatura ambiente é propício para a proliferação de bactérias, devemos evitar'),
                  TextSpan(text: '\n\u2055	Depois de descongelado, o alimento pode ser armazenado por no máximo 24 horas na geladeira. Nada de colocar na geladeira ou freezer o que sobrou do prato. Alimentos que já entraram em contato com a saliva ficam suscetíveis à contaminação.'),
                ],
              )
          ),
          Image.asset('images1/figg1012-10.jpeg'),
        ],
      )
    );
  }



}