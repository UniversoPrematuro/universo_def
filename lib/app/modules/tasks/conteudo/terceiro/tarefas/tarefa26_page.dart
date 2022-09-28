import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa26Page extends StatefulWidget {
  final String title;
  const Tarefa26Page({Key? key, this.title = 'Tarefa26Page'}) : super(key: key);
  @override
  Tarefa26PageState createState() => Tarefa26PageState();
}

class Tarefa26PageState extends State<Tarefa26Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 26"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                  child: LayoutBuilder(
                      builder: (_, constraints) => SingleChildScrollView(
                            child: Column(children: [
                              const Text(
                                "SIGA A 26ª TAREFA EM CASA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * .9,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("MOVIMENTO",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    CarouselSlider(
                                      options: CarouselOptions(
                                          height: 285.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          enableInfiniteScroll: false),
                                      items: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/fig79-8.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-3.jpeg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Cada vez mais ${store.controllerKidName.text} se esforça para'
                                              ' andar com ajuda dos móveis seguros da casa. Deixe que ${store.controllerKidName.text} '
                                              'explore esse movimento de forma independente. As quedas da '
                                              'própria altura acontecerão, fique calma(o) e incentive o levantar'
                                              ', “pulouuuu”.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LEMBRE-SE: Todo cuidado com ${store.controllerKidName.text} é muito importante.",
                                        style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 212, 32, 0),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic),
                                        // textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 1.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("SOM",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'A qualquer tentativa de emissão de som, '
                                              'por parte de ${store.controllerKidName.text}, encoraje mais e mais. Procure não ficar '
                                              'entendendo a comunicação por gestos ou olhares e mesmo situações '
                                              'que direciona o dedo para mostrar a vontade do alcance do objeto.'
                                              ' Vamos em frente!'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("CUIDADO!",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 214, 14, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          'Essa fase do desenvolvimento, ${store.controllerKidName.text}'
                                              ' fica muito tempo no chão para brincar, limpe todo o ambiente, '
                                              'principalmente nos cantos das paredes, embaixo do sofá e locais '
                                              'que os brinquedos fiquem guardados, para evitar algum contratempo'
                                              ' com bichos indesejáveis.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("ATENÇÃO!",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 214, 14, 0),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          regText(
                                              '',
                                              '- Cuidado com queda: não deixe ${store.controllerKidName.text}'
                                                  ' sozinho(a) no trocador ou na cama.\n- Respeite a hora do sono, um '
                                                  'ambiente tranquilo é importante para o seu desenvolvimento.'),
                                          const SizedBox(height: 30),
                                          const Text(
                                              "LEMBRE-SE: a frequência de estímulos é muito importante. Estimule "
                                              "sempre que possível",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 212, 32, 0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.italic)),
                                          const SizedBox(height: 30),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 20.0,
                                                bottom: 40.0,
                                                top: 20.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton.icon(
                                                label: const Text(
                                                  'Seguem as tarefas',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                icon: const Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: ((context) =>
                                                              const TaskTwentSi())));
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ]),
                          )))
            ],
          ),
        ));
  }
}

class TaskTwentSi extends StatefulWidget {
  const TaskTwentSi({super.key});

  @override
  State<TaskTwentSi> createState() => _TaskTwentSiState();
}

class _TaskTwentSiState extends State<TaskTwentSi> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 26"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                  child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * 4.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(0, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 70.0,
                                color: Colors.red,
                              ),
                              Container(
                                width: 100.0,
                                child: Image.asset("images1/Personagemai.png"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 0.0, 20.0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images1/ballon9.png')),
                              ),
                              child: const Text(
                                "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                " dias, nestes primeiros meses.\nVamos Começar?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Outro movimento associado, ${store.controllerKidName.text} ',
                          stg2: "sentado (a)",
                          stg3:
                              " estimule o deslocamento, fique um pouco distante de ${store.controllerKidName.text} e chame ${store.controllerKidName.text} para vir até você. Para a ocorrência do movimento terá que mudar da posição sentado para barriga para baixo, gerando o arrastar e/ou engatinhar."),
                      textCTRST(
                          stg1:
                              '\u2055 A rotina do ambiente influência nas atitudes de ${store.controllerKidName.text}. Cuidado com o barulho excessivo. Evite expor ${store.controllerKidName.text} a barulhos desnecessários e que possam gerar incomodo, como televisão e música com som alto. Quando ${store.controllerKidName.text} expressar irritabilidade, ofereça um aconchego no colo, cante e conversa com ${store.controllerKidName.text} para distrair e acalmar.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Ofereça brinquedos que fazem barulhos. O ruído associado ao movimento que ${store.controllerKidName.text} deve fazer para gerar o som, é uma maneira divertida de ensinar que toda ação tem uma reação.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Por exemplo, um cachorrinho de brinquedo, ensine a imitar e a chamar de “au..au.. “Faça você primeiro, mostre e explique como se faz, sempre identifique as ações verbalizando todas as etapas.'),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV26TASK1'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Com ${store.controllerKidName.text} na posição ',
                          stg2: "barriguinha pra baixo",
                          stg3:
                              ", coloque o brinquedo favorito a sua frente deixe brincar um pouco e explorar o brinquedo, depois você sentada na cadeira próximo de ${store.controllerKidName.text} pegue o brinquedo e deixe ${store.controllerKidName.text} vir atrás para alcança-lo. ${store.controllerKidName.text} irá se deslocar no chão, apoiar em suas pernas e subir, você pode apoiar oferecendo a sua mão para ajudar o movimento."),
                      textCTRST(
                          stg1:
                              '\u2055 Sempre ofereça brinquedos próprios para a idade de ${store.controllerKidName.text} para manter a segurança. Se ${store.controllerKidName.text} alcançar algum objeto inadequado, faça a troca com outro brinquedo de sua preferencia conversando e distraindo ${store.controllerKidName.text}.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 No momento do movimento acima interaja com ${store.controllerKidName.text} conversando sobre o brinquedo chamando a atenção e dialogando. '),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Repita essa tarefa para o aprendizado do movimento, fortalecimento dos músculos e melhorando o equilíbrio.'),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV26TASK2'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Busque recipientes de plástico na sua casa, que tenham tampa. Com ${store.controllerKidName.text} na posição ',
                          stg2: "sentado (a)",
                          stg3:
                              ", ensine ${store.controllerKidName.text} a tampar os recipientes, sempre oferecendo ajuda quando necessário."),
                      textCTRST(
                          stg1:
                              '\u2055 ${store.controllerKidName.text} ainda precisa de um adulto por perto, as atividades desenvolvidas por ${store.controllerKidName.text} devem ser sempre supervisionadas. Verifique se os brinquedos e objetos são apropriados para a idade de ${store.controllerKidName.text}, pois nesta fase os objetos são levados a boca e pode ter o risco de engasgos com peças pequenas. Evite acidentes domésticos.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Perto do recipiente de plástico com tampa deixe alguns brinquedos de diferentes tamanhos, formas e cores que possam ser guardados no pote. Mostre a possibilidade de guardar os objetos no pote e tira-lo, após a demonstração deixe ${store.controllerKidName.text} brincar sozinho interagindo e observando os detalhes de sua brincadeira.'),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV26TASK3'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos brincar de esconder! Guarde o brinquedo favorito de ${store.controllerKidName.text} em um lugar acessível, no local que está ocorrendo a brincadeira, permita que ${store.controllerKidName.text} veja onde o brinquedo está. Incentive o arrastar e ou engatinhar para que ${store.controllerKidName.text} busque o brinquedo e aproveite para experimentar a conquista da recuperação do brinquedo.'),
                      textCTRST(
                          stg1:
                              '\u2055 Não ofereça para ${store.controllerKidName.text} brinquedos com pontas ou bordas pontiagudas, com correntes, fitas ou mesmo cordas, pois pode embaraçar e machucar-se. Observe mesmo com uma distancia as brincadeiras de ${store.controllerKidName.text}, fique com atenção nas reações que está desenvolvendo e interagindo com o meio em que vive.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Continuando a brincadeira do esconde-esconde, na posição ',
                          stg2: "sentado (a)",
                          stg3:
                              ", esconda o brinquedo embaixo de uma almofada e deixe ${store.controllerKidName.text} achar, girando o tronco, apoiando uma mão na lateral....... Ao final da brincadeira, achando o brinquedo, vamos comemorar com um “vivaaaa”. As palavras de apoio ajudam o interesse no movimento e estimula para a repetição e aprendizado."),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV26TASK4'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Com ${store.controllerKidName.text} no seu colo, segure-o (a) e faça movimentos de modo que ele(a) pareça estar pulando. Incentive que ${store.controllerKidName.text} faça força nas perninhas.'),
                      textCTRST(
                          stg1:
                              '\u2055 Nessa idade, ${store.controllerKidName.text} quer estar perto de você a todo momento, principalmente no colo. Aproveite essa fase, passe segurança, confiança que ${store.controllerKidName.text} desenvolverá a autonomia. Registre os movimentos de ${store.controllerKidName.text} e coloque na galeria para compartilhar o desenvolvimento de ${store.controllerKidName.text}.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 A cada tentativa brinque dizendo, por exemplo: “upa”, “ehhh” ou outras pequenas expressões sonoras de interação positiva.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Permita alguns momentos em lugar seguro e de costume de permanência de ${store.controllerKidName.text}, observe e deixe brincar sozinho(a) para explorar com atenção e observação aos brinquedos.'),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV26TASK5'),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
