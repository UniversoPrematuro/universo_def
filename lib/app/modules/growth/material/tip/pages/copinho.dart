import 'package:flutter/material.dart';

class Copinho extends StatelessWidget {



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
            'Alimentação por copinho',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0,),
          content(
              'Quando utilizar:',
              'images1/figura 01.jpg',
              '\u27A2Quando a criança está com dificuldades de sucção (puxar o '
                  'leite materno); \n\n'
                  '\u27A2Ajudar na amamentação, até que a criança possa mamar '
                  'somente no peito;\n\n'
                  '\u27A2Quando a mamãe, por algum motivo, não consiga amamentar'
                  ' por um período de tempo;\n\n'
                  '\u27A2Quando a mamãe tem que complementar o leite materno com'
                  ' outro tipo de leite;\n\n'
                  '\u27A2Se a criança estava recebendo alimentação por sonda via'
                  ' nasal (nariz), e esta foi retirada pelo profissional de '
                  'saúde que acompanha a criança, além da amamentação, o leite '
                  'materno pode ser complementado através do copinho, até a '
                  'produção adequada do leite materno.'
          ),
          content(
              'Como fazer:',
              'images1/Gif-1.gif',
              '\u27A2Utilizar copinho resistente, que não tenha nenhuma ponta '
                  'na borda e que possa ser lavado e fervido;\n\n'
                  '\u27A2Lavar o copinho com água e sabão, colocar em uma panela'
                  ' com água encobrindo-o e fervê-lo por 15 minutos (contar após'
                  ' o início da fervura);\n\n'
                  '\u27A2Colocar o leite somente até a metade do copinho ou '
                  'menos, para que seja mais fácil posicionar o copo sem '
                  'derramar o leite;\n\n'
                  '\u27A2Sentar-se com os pés apoiados, num lugar confortável, '
                  'de forma acomodar o bebê em seu colo, na posição sentada;\n\n'
                  '\u27A2Proteger a cabeça do bebê com a sua mão em formato de C'
                  ' (polegar e indicador formando um “C”), na nuca da criança;\n\n'
                  '\u27A2A cabeça do bebê deve ficar mais reta;\n\n'
                  '\u27A2Encostar a borda do copinho no lábio debaixo (inferior'
                  ' da criança), até o cantinho da boca;\n\n'
                  '\u27A2A língua deve permanecer por cima da borda do copinho;\n\n'
                  '\u27A2Aguardar que a criança retire o leite, passando a '
                  'língua (lambendo) no leite e engolindo com seu próprio ritmo;\n\n'
                  '\u27A2Não derramar o leite na boca da criança virando todo o'
                  ' copinho na boca dela. Vire o copinho pouco, para que a '
                  'língua da criança tenha contato com o leite;\n\n'
                  '\u27A2A criança fará pausas durante a ingesta do leite, para'
                  ' respirar e descansar;\n\n'
                  '\u27A2Observe o ritmo de sucção (puxar o leite) e de engolir'
                  ' (deglutição);\n\n'
                  '\u27A2Prefira colocar no copinho o próprio leite da mamãe;\n\n'
                  '\u27A2Colocar a criança para arrotar.'
          ),
          content(
            'Vantagens', 'images1/figura 01.jpg',
            '\u27A2Ajuda a criança a retornar a mamar no seio, não interferindo'
                ' na sucção (retirada do leite pela criança);\n\n'
                '\u27A2Estimula os movimentos corretos da mandíbula (osso da '
                'face que movimenta ao abrir a boca) e da língua, favorecendo o'
                ' posicionamento correto para a amamentação;\n\n'
                '\u27A2A criança engole o leite no seu tempo;\n\n'
                '\u27A2Fornece o leite sem o uso de mamadeiras, evitando a '
                'confusão de bicos entre o bico da mamadeira e da mama;\n\n'
                '\u27A2É mais higiênico do que usar mamadeira;\n\n'
                '\u27A2Não causa problemas dentários na criança.',
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
