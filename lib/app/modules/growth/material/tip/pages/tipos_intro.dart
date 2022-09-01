
import 'package:flutter/material.dart';


class TiposIntro extends StatelessWidget {
  const TiposIntro({Key? key}) : super(key: key);





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
              'PARTE 4 –	TIPOS DE INTRODUÇÃO ALIMENTAR',
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
            '     Para oferecermos os alimentos poderemos escolher as papinhas (método tradicional) ou alimentos cozidos cortados em pedaços grandes (ex.: em formato de palitos) de forma que o bebe consiga pegar com as mãos (BLW - Baby Led Weaning), todos os dois possuem a mesma função de apresentar os alimentos ao bebe. Os dois métodos irão trazer os mesmos benefícios desde que oferecidos de forma correta. Tanto as frutas quanto as refeições salgadas poderão ser oferecidas das duas maneiras.\n'
                '\n     No método tradicional é utilizado:  alimentos cozidos amassados com o garfo. Não há necessidade de passar pela peneira ou liquidificador! Desta maneira, as papinhas serão oferecidas pelo cuidador do bebe.\n'
                '\n     Já no método BLW é utilizado: Alimentos cozidos inteiros ou em pedaços grandes com consistência e tamanho específico para cada alimento! O lema deste método é confiar no tempo do desenvolvimento do bebe, o qual irá determinar a forma que irá conduzir sua alimentação! É preciso uma supervisão constante durante as refeições para observar a forma que está evoluindo e se existe alguma interferência durante este momento, como o engasgo.',
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