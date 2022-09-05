import 'package:flutter/material.dart';

class Relactacao extends StatelessWidget {
  const Relactacao({super.key});



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
        children: <Widget>[
          const SizedBox(height: 30.0,),
          const Text(
            'Oferecer o leite por meio de uma sondinha (tubo pequeno para passagem do leite)',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 10.0,),
                const Text(
                  'Esse procedimento pode receber o nome de: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Translactação (Oferece apenas o leite materno)'
                          '\n\u27A2Relactação (Oferece outro tipo de leite, '
                          'sem ser o materno).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/figura 02.jpg'),
              ],
            ),
          ),
          content(
              'Quando utilizar:',
              'images1/figura 02.jpg',
              '\u27A2Pouca produção de leite pela mamãe;\n\n'
                  '\u27A2Complementar a amamentação, através do uso de outro '
                  'tipo de leite;\n\n'
                  '\u27A2Quando a criança está com dificuldades de sucção (puxar'
                  ' o leite materno);\n\n'
                  '\u27A2Se a criança estava recebendo alimentação por sonda via'
                  ' nasal (nariz), e esta foi retirada pelo profissional de '
                  'saúde que acompanha a criança, além da amamentação, o leite '
                  'materno pode ser complementado através da relactação, até a '
                  'produção adequada do leite materno.'
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Como Fazer:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Image.asset('images1/figura 03.jpg'),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Use um recipiente para armazenar o leite, que pode'
                          ' ser uma mamadeira pequena, seringa ou uma garrafinha'
                          ', ferva por 15 minutos, após o uso;\n\n'
                          '\u27A2Utilize sonda uretral número 4, que também deve'
                          ' ser fervida após o uso, em torno de 15 minutos e '
                          'trocada a cada semana. Esta sonda é um tubo de '
                          'silicone, de pequeno calibre que pode ser encontrada '
                          'em farmácias;\n\n'
                          '\u27A2Coloque o leite da mamãe ou outro tipo de leite'
                          ' no frasco ou seringa, após ordenha da mama. A '
                          'fórmula (leite em pó) deve ser utilizada quando a '
                          'produção do leite da mamãe ainda está baixa. Com a '
                          'sucção (retirada do leite) da criança no peito, a '
                          'produção de leite irá aumentar;\n\n'
                          '\u27A2Coloque uma das pontas da sonda no fundo do '
                          'frasco ou no recipiente que for usar;\n\n'
                          '\u27A2Fixa a seringa ou frasco, com fita adesiva, na'
                          ' roupa da mamãe ou no pescoço com um cordão;\n\n'
                          '\u27A2A outra ponta da sonda deve ser fixada na mama,'
                          ' com uma fita adesiva, com a ponta da sonda junto do'
                          ' bico do peito; \n\n'
                          '\u27A2Colocar a criança no peito, ela irá pegar a '
                          'parte escura da mama (aréola) e a sonda;\n\n'
                          '\u27A2A criança ao retirar o leite do peito também '
                          'estará recebendo o leite que sai da seringa ou '
                          'frasco;\n\n'
                          '\u27A2 mamãe deve controlar o fluxo de leite durante'
                          ' as pausas que a criança faz para descansar. A mamãe'
                          ' deve dobrar com a mão a sonda, e soltar quando a '
                          'criança voltar a retirar o leite.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const SizedBox(height: 10.0,),
                const Text(
                  'Utilizando um frasco com conector para sonda:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images1/figura 05.jpg'),
                const SizedBox(height: 10.0,),
                const Text(
                  'Utilizando um frasco com abertura voltado para cima:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images1/figura 06.jpg'),
              ],
            ),
          ),
          content(
            'Vantagens', 'images1/figura 04.jpg',
            '\u27A2Estimula a produção de leite da mamãe;\n\n'
                '\u27A2Criança não percebe o uso da sonda, facilitando a '
                'amamentação;\n\n'
                '\u27A2Fornece o leite sem o uso de mamadeiras, evitando a '
                'confusão de bicos entre o bico da mamadeira e da mama;\n\n'
                '\u27A2É mais higiênico do que usar mamadeira;',
          ),

          const SizedBox(height: 30.0,),
          // redDoubt(context,UID),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget content(String title, String image, String text){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 101, 188, 89),
              width: 3.0
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 101, 188, 89),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                style: const TextStyle(
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
