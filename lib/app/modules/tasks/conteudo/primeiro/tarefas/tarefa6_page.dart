import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa6Page extends StatefulWidget {
  final String title;
  const Tarefa6Page({Key? key, this.title = 'Tarefa6Page'}) : super(key: key);
  @override
  Tarefa6PageState createState() => Tarefa6PageState();
}

class Tarefa6PageState extends State<Tarefa6Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 6"),
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
                                "SIGA A 6ª TAREFA EM CASA",
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
                                    Container(
                                      margin:
                                          const EdgeInsets.symmetric(vertical: 10.0),
                                      width: 250.0,
                                      //height: 250.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 101, 188, 89),
                                              width: 3.0)),
                                      child: Image.asset('images1/Gif6.gif'),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
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
                                          '\u25CF Movimento',
                                          '- Explorar todas as posições '
                                              'corporais conquistadas com a ajuda do adulto e também permitir '
                                              'que ${store.controllerKidName.text} brinque com seus movimentos voluntários.'),
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
                                      MediaQuery.of(context).size.height * .95,
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
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Coloque música, converse, cante'
                                              ' e mostre os diferentes sons para ${store.controllerKidName.text}.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 20.0,
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
                                                '\u25CF Cuidado!',
                                                '- Não deixar brinquedos, roupas e '
                                                    'objetos livres dentro do berço.\n- Em período de frio não cobrir '
                                                    ' rostinho, manter a coberta abaixo do pescoço e firmemente fixada'
                                                    ' na lateral.'),
                                          ),
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
                                                      builder: ((context) => const TaskSix())
                                                    )
                                                  );
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

class TaskSix extends StatefulWidget {
  const TaskSix({super.key});

  @override
  State<TaskSix> createState() => _TaskSixState();
}

class _TaskSixState extends State<TaskSix> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text("Tarefa 6"),
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
                height: MediaQuery.of(context).size.height * 3,
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
                       speechPerson(),
          const SizedBox(height: 40.0,),
          textCTRST(
            stg1: '\u2055 Deixe os brinquedos próximos ao corpinho de ${store.controllerKidName.text} e no '
                'campo de visão em um local seguro, plano e baixo. É o momento da'
                ' tentativa de pegar sozinho/a o brinquedo e explorar.',
          ),textCTRST(stg1: '\u2055 Deixe bebe brincar e movimentar sozinho em '
              'pequenos períodos do dia. O desenvolvimento vai acontecendo '
              'todos os dias.'),
          // SizedBox(height: 15.0:0.0,),
          textCTRST(
            stg1: '\u2055  Quando ${store.controllerKidName.text} sorrir retorne interagindo com um largo '
                'sorriso para que ${store.controllerKidName.text} entenda que interagiu com você, por meio '
                'de um sorriso. Sempre que ${store.controllerKidName.text} conseguir pegar o brinquedo dê '
                'parabéns. É uma forma de contato e de interação',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV6TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na ',
            stg2: 'posição sentada',
            stg3: ' deixe ${store.controllerKidName.text} explorar o brinquedo com suas mãozinhas. Os brinquedos'
                ' de diferentes texturas, pesos (grs), cores e formatos são '
                'importantes para o estímulo do desenvolvimento.',
          ),textCTRST(stg1: '\u2055 Não oferecer brinquedos que gera risco a '
              'saúde de bebe (perfumado, pequenos, cortantes, ponte agudos).'),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV6TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 A massagem na barriguinha com movimentos das mãos com '
                'leve compressão na direção da costela para baixo ou movimentos'
                ' circulares ajudam no funcionamento do intestino.',
          ),textCTRST(stg1: '\u2055 A massagem na barriguinha com movimentos '
              'de mão com leve compressão na direção da costela para baixo ou '
              'movimentos circulares ajuda o funcionamento do intestino. '),
          // SizedBox(height: 15.0:0.0,),
          textCTRST(
            stg1: '\u2055 Aproveite esse momento para cantar algumas canções.',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV6TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Brinque com o pezinho dele/a e estimule ${store.controllerKidName.text} a '
                'olhar e segurar o seu próprio pé.',
          ),textCTRST(stg1: '\u2055 Sempre que possível pegar bebe no colo e oferecer o afeto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Aproveite esse momento para estimular sorrisos e a '
                'emissão de sons de ${store.controllerKidName.text}. Faça com frases curtas, facilitando as'
                ' relações de sua fala com as expressões faciais e seus gestos.',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV6TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos cantar e estimular todos os movimentos '
                'corporais até agora explorados.',
          ),textCTRST(stg1:'\u2055 ',stg2: 'Parabéns! Estamos indo muito bem com o desenvolvimento de bebe.'),
          // SizedBox(height: 15.0:0.0,),
          textCTRST(
            stg1: '\u2055 Responda a qualquer tentativa de emissão de sons de ${store.controllerKidName.text}'
                '. Faça desse momento, um momento de conversa descontraída e cheia'
                ' de alegria',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV6TASK5'),

          const SizedBox(height: 60.0,),
          const Text('Parabéns! Estamos indo muito bem com a estimulação.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
            ),
            textAlign: TextAlign.center,),
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