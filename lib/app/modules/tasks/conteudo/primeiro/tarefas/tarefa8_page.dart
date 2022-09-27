import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa8Page extends StatefulWidget {
  final String title;
  const Tarefa8Page({Key? key, this.title = 'Tarefa8Page'}) : super(key: key);
  @override
  Tarefa8PageState createState() => Tarefa8PageState();
}

class Tarefa8PageState extends State<Tarefa8Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 8"),
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
                                "SIGA A 8ª TAREFA EM CASA",
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
                                          height: 285.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          enableInfiniteScroll: false),
                                      items: <Widget>[
                                        Container(
                                          //margin: EdgeInsets.symmetric(vertical: 10.0),
                                          //width: 350.0,
                                          //height: 250.0,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child:
                                              Image.asset('images1/Gif3.gif'),
                                        ),
                                        Container(
                                          //margin: EdgeInsets.symmetric(vertical: 10.0),
                                          //width: 250.0,
                                          //height: 250.0,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child:
                                              Image.asset('images1/Gif5.gif'),
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
                                          20.0, 10.0, 20.0, 40.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Agora é o momento de aprimorar '
                                              'todos os posicionamentos corporais que conquistamos até o '
                                              'momento. A cada dia vamos sustentar melhor a cabeça e girar de '
                                              'um ponto a outro. O giro do corpo para a mudança de posição '
                                              'corporal também é muito interessante para o desenvolvimento.'),
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
                                      MediaQuery.of(context).size.height * .96,
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
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Vamos estimular a imitação dos sons '
                                              'das palavras, interagir entre o adulto e a/o ${store.controllerKidName.text}.'),
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
                                          '\u25CF Cuidado!',
                                          '- O movimento corporal começa a '
                                              'ficar de forma mais independente. É importante maior atenção aos '
                                              'cuidados com queda e com brinquedos pequenos que possam ser '
                                              'levados à boca.'
                                              '- Cuidados com quedas e brinquedos pequenos na boca.'),
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
                                                      builder: ((context) => const TaskEights())
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

class TaskEights extends StatefulWidget {
  const TaskEights({super.key});

  @override
  State<TaskEights> createState() => _TaskEightsState();
}

class _TaskEightsState extends State<TaskEights> {
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
                      const SizedBox(
                        height: 40.0,
                      ),
                      textCTRST(
                        stg1: '\u2055 De ',
                        stg2: 'barriguinha para baixo',
                        stg3:
                            ' em um lugar plano e baixo o adulto deverá mostrar com '
                            'movimento e som um brinquedo para estimular o pegar e/ou '
                            'movimentação dos braços e pernas.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Deixe a casa bem arejada para um ambiente agradável.'),
                      // SizedBox(height: group=='EST'?15.0:0.0,),
                      textCTRST(
                        stg1:
                            '\u2055 Em todas as atividades diárias associe com movimentos'
                            ' e verbalizações de repetição para a memorização. “Cadê!”',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV8TASK1'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1: '\u2055 Na ',
                        stg2: 'posição sentada',
                        stg3:
                            ' mostrar o brinquedo com uma distância e estimular ${store.controllerKidName.text} a '
                            'pegar e/ou movimentar as mãos e pernas. Após isso, deixe alcançar o'
                            ' brinquedo e explorar.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Não permita que pessoas fumem no ambiente '
                              'em que ${store.controllerKidName.text} está. Mantenha a boa qualidade do ar para proteger '
                              'as vias respiratórias e a saúde.'),
                      // SizedBox(height: group=='EST'?15.0:0.0,),
                      textCTRST(
                        stg1:
                            '\u2055 Aponte o objeto (brinquedo) antes do alcance, nomeia '
                            'o objeto depois pegue-o e deixe ${store.controllerKidName.text} pegar.',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV8TASK2'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Oferecer brinquedos com diferentes texturas e formas '
                            '(macio, áspero, liso, redondo, fino, flexível). ',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Os cuidados diários com ${store.controllerKidName.text} (banho, troca,'
                              ' alimentação) podem ser momentos de estreitar laços familiares.'
                              ' Aproveite!  '),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV8TASK3'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Brincar de girar o corpo no próprio eixo, ',
                        stg2:
                            'barriguinha para cima em direção da lateral direita e depois'
                            ' volta para barriga para cima e vira para a lateral esquerda.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 A higienização das mãos é necessária sempre'
                              ' que manipular ${store.controllerKidName.text}. Principalmente de visitantes. O sistema de'
                              ' defesa de ${store.controllerKidName.text} está sendo construído, então, vamos tomar '
                              'cuidado com materiais pessoais e tudo que terá contato com ${store.controllerKidName.text}.'
                              ' Com o crescimento a defesa do organismo vai ficando mais forte.'),
                      // SizedBox(height: group=='EST'?15.0:0.0,),
                      textCTRST(
                        stg1:
                            '\u2055 Aproveite para estimular a imitação dos sons das palavras.',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV8TASK4'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos associar o movimento sentado com o apoio nas '
                            'costas e o movimento do olho em busca do objeto de estimulo '
                            'para o lado direito e esquerdo, deixe ${store.controllerKidName.text} perceber que poderá'
                            ' buscar o giro do corpo, que há uma possibilidade. Sentir que '
                            'as conquistas de novos movimentos estarão por vir.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 O cuidado com ${store.controllerKidName.text} é importante para sua '
                              'saúde e bem-estar, mas não esqueça dos cuidados de quem cuida de'
                              ' ${store.controllerKidName.text}, pois o descanso, a alimentação e também o estabelecer uma'
                              ' rotina, é valioso neste momento. '),
                      // SizedBox(height: group=='EST'?15.0:0.0,),
                      textCTRST(
                        stg1:
                            '\u2055 Oferecer mais de um brinquedo e deixe ${store.controllerKidName.text} manifestar'
                            ' se há um preferido. ',
                      ),
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
