import 'package:flutter/material.dart';


class Engasgo extends StatelessWidget {
  const Engasgo({Key? key}) : super(key: key);





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
              'PARTE 8 – ENGASGO E REFLEXO DE GAG',
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
            '     Ao iniciamos a introdução alimentar devemos aprender sobre os engasgos e o reflexo de Gag, que podem vir acontecer no processo da alimentação, e para isso precisamos saber como lidar para que assim contornemos essa situação.\n'
                '\n     Os engasgos podem acontecer com qualquer consistência da alimentação, um exemplo, é quando nós adultos engasgamos com a saliva, uma coisa simples e boba, mas que por alguns segundos nos oferece um susto e desconforto!\n'
                '\n\nPor isso a imagem a seguir nos mostra como devemos fazer quando um engasgo ocorre. No caso siga os passos:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),

          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: '1', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - Sente o bebê de frente para você;\n'),
                  TextSpan(text: '2', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - A mão mais forte (se a pessoa for destra, é a direita) será usada para fazer o golpe para desobstruir a via aérea;\n'),
                  TextSpan(text: '3', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - Com a outra mão, faça um V na frente do rosto do bebê e vire a criança de cabeça para baixo apoiando-a sobre o braço. Sempre com o bumbum mais alto que as costas;\n'),
                  TextSpan(text: '4', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - Com a mão mais forte e a criança apoiada na perna, golpeie 5x entre as escápulas (na direção dos bracinhos);\n'),
                  TextSpan(text: '5', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - Feito o golpe, desvire o bebê e apoie a cabeça sobre a mão direita e observe se saiu o fragmento;\n'),
                  TextSpan(text: '6', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 192, 60, 39))),
                  TextSpan(text: ' - se não resolveu e a criança nem começou a chorar; a criança apoiada de barriga para cima sobre o braço direito, a pessoa fará pressão com 3 dedos no meio do tórax na direção dos mamilos, 5 vezes.\n'),
                ],
              )
          ),
          Image.asset('images1/figg1012-25.jpeg'),

          Text(
            '     O reflexo de gag é o inicio de um engasgo, ou seja, o alimento segue para a garganta porem o próprio organismo entende que foi um engano e faz com que o alimento volte espontaneamente para a boca, assim o bebe ira engolir da forma correta ou ira jogar fora.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Image.asset('images1/figg1012-6.jpeg'),
        ],
      )
    );
  }



}