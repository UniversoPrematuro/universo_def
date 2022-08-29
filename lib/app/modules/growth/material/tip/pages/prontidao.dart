
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Prontidao extends StatelessWidget {



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
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 1 – COMO PREPARAR',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  text: 'Como vimos no ',
                  children: <TextSpan>[
                    TextSpan(
                        text: '\u279Ccapitulo dos 6 meses',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline
                        )
                    ),
                    TextSpan(text:' a melhor forma de preparo dos vegetais da refeição salgada é no vapor, onde se perde menos nutrientes e é mais fácil de chegar na consistência adequada, assim devemos pegar todos os vegetais e distribuir em uma panela de forma que eles fiquem cozinhando por um tempo!'
                        '\nA consistência do alimento nesta fase deve evoluir um pouco, então vamos deixar alguns pedaços maiores dos alimentos para o bebe. Devemos manter com uma consistência macia para que seja mais fácil da criança trabalhar com os alimentos dentro da boca. ')
                  ]
              ),
            ),
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Expanded(child: GCARD('BLW',context,1,UID,name)),
          //     Expanded(child: GCARD('Tadicional',context,2,UID,name)),
          //   ],
          // ),

        ],
      ),
    );
  }

  Widget GCARD(String title, BuildContext context, int page,String UID, String name) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Gsub_361sub(page,title))));
      },
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.all(20.0),
        child: Container(
          color: Color.fromARGB(20, 101, 188, 89),
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

}


class Gsub_361sub extends StatelessWidget {

  int num;
  String title;
  Gsub_361sub(this.num,this.title);

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
              title,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0,),

          content(num),

          SizedBox(height: 20.0,),
          Image.asset('images/figg1012-27.jpeg',),
        ],
      ),
    );
  }

  Widget content(int num){
    if(num == 1){
      return Text(
        "Aparentemente os alimentos estarão parecidos com os alimentos oferecidos no período de 6 a 9 meses, pois a forma natural dos alimentos já foi apresentada, porém nesta fase, os alimentos podem estar um pouco mais consistentes, não precisando cozinhar tanto ao ponto de se desfazer facilmente com a ponta do garfo. Precisamos estabelecer o ponto em que se desfaça com a pressão de um garfo, mas que ao fazer este processo alguns pedaços ainda fiquem. Além disso, nesta idade o bebe provavelmente já conseguirá pegar alimentos pequenos, utilizando os dedos em forma de pinça. Com essa nova habilidade já podemos inovar nos cortes e formas de servir os alimentos."
            "\n\nAo chegar aos 12 meses queremos que bebe esteja comendo a mesma comida que é oferecida para os membros da família, com a consistência e tamanhos iguais! Por isso é importante evoluirmos a cada mês esta alimentação. A participação dos familiares no momento da refeição é muito importante. Integre o bebe neste momento!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        textAlign: TextAlign.justify,
      );
    } else if(num == 2){
      return Text(
        "Para as papinhas, iremos cozinha no vapor e em seguida amassar com um garfo deixando desta vez alguns pedaços maiores. O pratinho deve continuar sendo montado com todos os alimentos separados, cada um em seu montinho e nada de fazer uma papinha única, combinado?"
            "\n\nAo chegar aos 12 meses queremos que bebe esteja comendo a mesma comida que vocês adultos, com a consistência e tamanhos iguais, seja o grão de arroz e feijão ou a carne! Por isso é importante que evoluímos a cada mês esta alimentação. Mas lembre-se, a qualidade e a variedade dos alimentos é importante para o crescimento saudável!"
            "\n\nNão é tudo que o adulto come que será permitido para o bebe. Fique atento (a)!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        textAlign: TextAlign.justify,
      );
    } else return Container();
  }
}
