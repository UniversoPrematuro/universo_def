import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa10Page extends StatefulWidget {
  final String title;
  const Tarefa10Page({Key? key, this.title = 'Tarefa10Page'}) : super(key: key);
  @override
  Tarefa10PageState createState() => Tarefa10PageState();
}

class Tarefa10PageState extends State<Tarefa10Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 10"),
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
                                "SIGA A 10ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1,
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
                                          height: 230.0,
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
                                              'images1/46 IMAGEM 05.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/46 IMAGEM 07.png'),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
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
                                              'É importante estimular ${store.controllerKidName.text} a '
                                                  'pegar o brinquedo com as duas mãozinhas, olhar e explorar. '
                                                  'Mostre e apresente objetos macios e de formas diferentes para '
                                                  '${store.controllerKidName.text}, deixe o olhar de ${store.controllerKidName.text} alcançar o objeto, observá-lo e '
                                                  'tentar pega-lo. É importante as tentativas e esforços para '
                                                  'alcançar o objeto. É importante expor a criança em um pequeno '
                                                  'grau de dificuldade para vencer as etapas.'),
                                        )),
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
                                      MediaQuery.of(context).size.height * .9,
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
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 40.0,
                                                right: 40.0,
                                                bottom: 20.0),
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 10.0, 20.0, 20.0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'images1/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'O som é importante, fale, cante, emita '
                                                    'som em frente ${store.controllerKidName.text} para a observação e imitação.'),
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
                                                '\u25CF Atenção!',
                                                'As quedas podem acontecer, acredita'
                                                    ' sempre que ${store.controllerKidName.text} poderá fazer um movimento que você ainda não viu'
                                                    ' acontecer. Proteja e evite quedas indesejáveis!'),
                                          ),
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
                                                      builder: ((context) => const TaskTen())
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

class TaskTen extends StatefulWidget {
  const TaskTen({super.key});

  @override
  State<TaskTen> createState() => _TaskTenState();
}

class _TaskTenState extends State<TaskTen> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 10"),
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
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images1/ballon9.png')),
                              ),
                              child: Text(
                                "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                " dias, nestes primeiros meses.\nVamos Começar?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 40.0,
                      ),

                      textCTRST(
                        stg1: '\u2055 Na ',
                        stg2: 'posição sentada',
                        stg3:
                            ' deixar explorar o brinquedo com suas mãozinhas. Os '
                            'brinquedos de diferentes texturas, pesos (grs), cores e '
                            'formatos são importantes para o estímulo.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Converse antes com o pediatra para começar '
                              'a passear em lugares de maior movimento com ${store.controllerKidName.text}. Precisamos de '
                              'um sinal verde, para garantir a segurança para ${store.controllerKidName.text}.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID, 'DEV9TASK1'),
                      const SizedBox(
                        height: 60.0,
                      ),

                      SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de esconder! Coloque ${store.controllerKidName.text} deitado(a) no '
                'seu colo, de ',
            stg2: 'barriguinha para cima',
            stg3: ' e esconda seu rosto (tampe seus olhos com as suas mãos). '
                'Fale com ${store.controllerKidName.text} “Cadê mamãe/papai?”, “Achou!”.',
          ),textCTRST(stg1:'\u2055 Nessa idade, ${store.controllerKidName.text} começa a ficar mais tempo '
              'acordado, por isso é importante redobrar a atenção para quedas e'
              ' acidentes. As quedas podem acontecer, acredite sempre que ${store.controllerKidName.text} '
              'poderá fazer um movimento que você ainda não viu acontecer. '
              'Proteja e evite quedas indesejáveis! Fique sempre de olho em ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Enquanto ${store.controllerKidName.text} estiver no seu colo, ensine-o(a) a mandar '
                'beijos e fazer caretinha.',
          ),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Brinca de rolar de ',
            stg2: 'barriquinha para cima e para baixo',
            stg3: ', período da manhã e da tarde.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV10TASK1'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Hoje é dia de ensinar cores à ${store.controllerKidName.text}! Com ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para cima',
            stg3: ', apresente os brinquedos dele(a) e fale as cores dos '
                'brinquedos, período da manhã e da tarde. Mostre os brinquedos '
                'em diferentes ângulos, para que ${store.controllerKidName.text} aprenda a virar a '
                'cabeçinha para os lados.',
          ),textCTRST(stg1: '\u2055 Fique atenta(o)! Se ${store.controllerKidName.text} sujar a fralda, '
              'troque-as o quanto antes para evitar assaduras.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos aproveitar o momento de barriguinha para cima e'
                ' conversar com ${store.controllerKidName.text} suavemente, sempre com olhares fixos deixe'
                ' ${store.controllerKidName.text} ouvir sua voz, dando-lhe atenção, para que se sinta '
                'seguro em fazer parte desta conversa.',
          ),textCTRST(stg1: '\u2055 Valorize a hora do sono, esse momento é '
              'importante para o desenvolvimento da criança. Hora do silêncio '
              'com pouca luminosidade e muita tranquilidade!'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Deixe ${store.controllerKidName.text} sentado(a) com apoio na cintura para observar'
                ' o movimento ao seu arredor, é um bom estímulo para o ganho '
                'postural, somente manter alguns segundos de cada vez. ',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV10TASK2'),



          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo',
            stg3: ', mostre o reflexo dele(a) em um espelho pequeno, mostre que '
                'aquele(a) no espelho é ${store.controllerKidName.text}, incentive-o(a) a fazer caras e bocas.',
          ),textCTRST(stg1: '\u2055 Conforme ${store.controllerKidName.text} cresce, sua audição e visão '
              'vão melhorando. Tenha cuidado sobre o ambiente que ${store.controllerKidName.text} estiver,'
              ' mantenha sempre um ambiente agradável.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Brincar de barriguinha para baixo com brinquedos macios'
                ' e que emitem som na frente de ${store.controllerKidName.text}, ajuda para fortalecer para '
                'novos ganhos do movimento.',
          ),textCTRST(stg1: '\u2055 Procure não movimentar ${store.controllerKidName.text} após as mamadas,'
              ' evite o retorno do alimento.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Valorize a hora do sono, esse momento é importante '
                'para o desenvolvimento da criança. Hora do silêncio com pouca'
                ' luminosidade e muita tranquilidade!',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV10TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na posição de ',
            stg2: 'barriguinha para cima e depois barriguinha para baixo',
            stg3: ', mostre um brinquedo que ${store.controllerKidName.text} goste muito de brincar e '
                'estimule para pegar o brinquedo.',
          ),textCTRST(stg1: '\u2055 É momento de celebrar cada conquista de ${store.controllerKidName.text}!'
              ' Nunca deixe de comemorar cada marco alcançado!'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É importante você sempre conversar e comemorar cada '
                'conquista de ${store.controllerKidName.text}, assim ele(a) terá estimulo para continuar a'
                ' progredir e alcançar as novas etapas.',
          ),textCTRST(stg1: '\u2055 Cuidado com brinquedos e objetos pequenos, '
              'risco de leva-los a boca e gerar o engasgo e aspiração. Evite o '
              'risco e proteja ${store.controllerKidName.text}! Oferece somente brinquedos correto para a '
              'idade e de resistência própria para a sua criança.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É importante que ${store.controllerKidName.text} atenda e se vire para o sentido '
                'do barulho, então vamos chamar a cada vez de um lado da '
                'criança para que o movimento de girar a cabeça aconteça.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV10TASK4'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de aviãozinho com ${store.controllerKidName.text}! Segure-o(a) pelas '
                'axilas e, com você deitado(a) de barriga para cima, faça '
                'movimentos com ${store.controllerKidName.text} de modo que pareça que ele está voando.',
          ),textCTRST(stg1: '\u2055 Ao transportar ${store.controllerKidName.text}, se atente à maneira '
              'correta que os profissionais da saúde sugerem: no carro, sempre '
              'em uma cadeira própria para a idade.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Não esqueça de fazer barulhos e de sorrir para ${store.controllerKidName.text}! '
                'Sempre com contato visual de olho o olho, dedicação, '
                'disponibilidade e frequência mantenha interação e conversas '
                'com ${store.controllerKidName.text}. ',
            stg2: 'Atenção!',
            stg3: ' Esse movimento não pode acontecer após as mamadas.',
          ),textCTRST(stg1: '\u2055 Escolha um lugar seguro e sem risco de '
              'quedas, os movimentos de ${store.controllerKidName.text} vão surgindo com maior facilidade '
              'e rapidez. Cuidado!'),
          SizedBox(height: 10.0,),
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
