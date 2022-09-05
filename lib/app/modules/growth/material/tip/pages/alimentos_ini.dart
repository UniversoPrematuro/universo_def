import 'package:flutter/material.dart';


class AlimentosIni extends StatelessWidget {
  const AlimentosIni({Key? key}) : super(key: key);




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
        children: const [
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 9 –	ALIMENTOS PARA SER INICIADOS',
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
            '     Para o início da introdução alimentar é recomendado que se inicie com as frutas ou com os legumes cozidos. As frutas costumam apresentar uma melhor aceitação pelos bebes, sendo assim, podemos dar início por elas. Qualquer fruta pode ser oferecida, não existindo contraindicações.\n'
                '\n     É preciso lembrar apenas que no método tradicional as frutas serão amassadas, e no BLW elas estarão inteiras ou em pedaços grandes, precisando cortá-las corretamente para evitar engasgos e asfixia. As frutas arredondadas (uva, jabuticaba, acerola, pitanga...) precisam de mais atenção, assim devem ser cortadas para garantir a segurança.\n',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      )
    );
  }



}