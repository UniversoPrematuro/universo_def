import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Ordenha extends StatelessWidget {



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
        children: <Widget>[
          SizedBox(height: 30.0,),
          Text(
            'Como retirar o leite manualmente (Ordenha)',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('images1/Gif-2.gif'),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'Evite o uso de bombinhas, dê preferência para que a '
                          'ordenha seja manual (com as mãos). A bombinha pode '
                          'causar irritação ou provocar lesões na aréola (parte'
                          ' escura da mama).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),
          ),
          content(
              'Quando fazer:',
              'images1/figura 07.jpg',
              '\u27A2Mama endurecida, muito cheia;\n\n'
                  '\u27A2Aréola (parte escura do peito) dura no toque da mama;\n\n'
                  '\u27A2Quando o leite vai ser oferecido no copinho;\n\n'
                  '\u27A2A mamãe deseja doar o leite;\n\n'
                  '\u27A2Evite o uso de bombinhas, dê preferência para que a '
                  'ordenha seja manual (com as mãos).'
          ),
          content(
              'Preparo do frasco para guardar o leite:',
              'images1/figura 08.jpg',
              '\u27A2O frasco deve ser de vidro transparente com tampa plástica;\n\n'
                  '\u27A2Retire o rótulo e o papel de dentro da tampa, lave com'
                  ' água sabão e depois ferva a tampa e o frasco por 15 minutos;\n\n'
                  '\u27A2Deixe o frasco secar e o tampe;\n\n'
                  '\u27A2Identifique o frasco com o nome da mamãe, data e hora '
                  'da coleta do leite.'
          ),
          content(
              'Cuidados antes de iniciar a ordenha:',
              'images1/figura 09.jpg',
              '\u27A2Inicia lavando as mãos e preparando o material que irá '
                  'utilizar;\n\n'
                  '\u27A2Retire anéis, pulseiras, relógios e alianças e prenda '
                  'o cabelo; \n\n'
                  '\u27A2Evite falar durante o procedimento;\n\n'
                  '\u27A2Escolha um ambiente limpo e calmo;\n\n'
                  '\u27A2Forre uma mesa com pano limpo para colocar o frasco e '
                  'a tampa.'
          ),
          content(
              'Como retirar o leite manualmente:',
              'images1/Gif-2.gif',
              '1 - Exponha a mama, faça uma massagem suave, em círculo, com as '
                  'pontas dos dedos (indicador e médio), em toda a mama, '
                  'iniciando pela parte escura (aréola);\n\n'
                  '2 - Comprima (aperte) suavemente os dedos na mama, '
                  'principalmente nos pontos da mama que estejam endurecidos;\n\n'
                  '3 - Em seguida, coloque o dedo polegar, na parte de cima onde'
                  ' inicia a aréola, e o dedo indicador na parte de baixo da '
                  'mama, onde inicia aréola (parte escura da mama):\n'
                  '\u27A2Firme os dedos na aréola, empurre os dedos para trás '
                  'em direção ao corpo e para frente, juntando levemente os '
                  'dedos;\n'
                  '\u27A2Pressione e solte os dedos na aréola (parte escura da '
                  'mama) várias vezes.\n'
                  '\u27A2Não deslize os dedos sobre a parte escura da mama '
                  '(aréola);\n'
                  '\u27A2Despreze os primeiros jatos ou gotas e inicie a coleta'
                  ' no frasco.\n\n'
                  '4 - Coloque o frasco debaixo da aréola (parte escura da'
                  ' mama) e coleta o leite.\n'
                  '\u27A2A mamãe deve mudar a posição dos dedos ao redor da '
                  'aréola (parte escura mama) para esvaziar toda a mama;\n'
                  '\u27A2Mude de mama quando a saída do leite reduzir; \n'
                  '\u27A2Após terminar a coleta, feche bem o frasco;\n'
                  '\u27A2Se o frasco não ficar cheio, completá-lo em outra '
                  'coleta (no mesmo dia), deixando sempre um espaço de dois '
                  'dedos entre a boca do frasco e o leite. '
          ),
          content(
              'Armazenamento:',
              'images1/Gif-3.gif',
              '\u27A2Após a coleta, guarde o frasco no congelador ou freezer da'
                  ' geladeira, em posição vertical (em pé);\n\n'
                  '\u27A2Guardar na geladeira por até 12 horas, e no freezer ou'
                  ' congelador por até 15 dias;\n\n'
                  '\u27A2Se o frasco não ficar cheio, completá-lo em outra '
                  'coleta (no mesmo dia), deixando sempre um espaço de dois '
                  'dedos entre a boca do frasco e o leite;'
          ),
          content(
              'Como oferecer para criança:',
              'images1/figura 08.jpg',
              '\u27A2O leite pode ser oferecido utilizando copinho ou com '
                  'auxílio de sondinha;\n\n'
                  '\u27A2Retire o frasco da geladeira;\n\n'
                  '\u27A2Se o frasco estiver no congelador, coloque-o na '
                  'geladeira, até descongelar;\n\n'
                  '\u27A2Esquenta água em uma panela, antes de iniciar a '
                  'fervura, desligue o fogo e coloque o frasco (banho-maria), e'
                  ' mexe com a mão o frasco, com movimentos suaves, até o leite'
                  ' descongelar. Não é necessário deixar o leite materno ficar '
                  'quente, apenas morno;\n\n'
                  '\u27A2Pode ser utilizado outro frasco, limpo, para mornar o '
                  'leite. Morne o leite que a criança vai consumir, o restante '
                  'guarde-o na geladeira e o utilize em até 12 horas;\n\n'
                  '\u27A2Não deve utilizar micro-ondas para mornar o leite;\n\n'
                  '\u27A2Cuidado com a temperatura do leite! Antes de oferecer '
                  'o leite à criança, verifique a temperatura, o leite deverá '
                  'estar morno e não quente.'
          ),

          SizedBox(height: 30.0,),
          // redDoubt(context,UID),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget content(String title, String image, String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromARGB(255, 101, 188, 89),
              width: 3.0
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 101, 188, 89),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ),
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                text,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }

}
