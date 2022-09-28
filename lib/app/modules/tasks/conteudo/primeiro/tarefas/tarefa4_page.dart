import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa4Page extends StatefulWidget {
  final String title;
  const Tarefa4Page({Key? key, this.title = 'Tarefa4Page'}) : super(key: key);
  @override
  Tarefa4PageState createState() => Tarefa4PageState();
}

class Tarefa4PageState extends State<Tarefa4Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 4"),
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
                                "SIGA A 4ª TAREFA EM CASA",
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
                                        enableInfiniteScroll: false,
                                      ),
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
                                              Image.asset('images1/Gif2.gif'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
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
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Estimule a transferência de '
                                              'posição corporal (de lateral para barriga para baixo e de lateral para'
                                              ' barriga para cima).'),
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
                                      MediaQuery.of(context).size.height * 1.05,
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
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Converse, cante e mostre os diferentes'
                                              ' sons para ${store.controllerKidName.text}.'),
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
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '- Deixe ${store.controllerKidName.text} com objetos seguros, '
                                              'sem risco de acesso às pequenas peças.\n- Evite o risco de quedas.'
                                              ' Mantenha ${store.controllerKidName.text} em lugar plano e seguro. Cuidado com lugares altos.'),
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
                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const TaskFour())));
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

class TaskFour extends StatefulWidget {
  const TaskFour({super.key});

  @override
  State<TaskFour> createState() => _TaskFourState();
}

class _TaskFourState extends State<TaskFour> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 4"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraints) => SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 3.3,
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
                        children: <Widget>[
                          
                          speechPerson(),
                          const SizedBox(
                            height: 40.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055 Vamos começar com movimentos para preparar ${store.controllerKidName.text} para o '
                                      'rolar. Para as brincadeiras devem ser utilizados brinquedos ou situações'
                                      ' que estimulem ${store.controllerKidName.text} a mudar de posição corporal. Vamos iniciar'
                                      ' de lateral para barriga para cima.',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 As brincadeiras devem ser sempre em lugares'
                                      ' seguros, que não ofereçam riscos.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055  Todas as brincadeiras e movimentos executados devem'
                                      ' ser comemorados com palavras de incentivo e alegria. ',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 As orientações que você aprendeu com os '
                                      'profissionais de saúde, até agora, são importantes para colocar '
                                      'em prática os cuidados. É mais seguro para ${store.controllerKidName.text}.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Radin(UID, 'DEV4TASK1'),
                          const SizedBox(
                            height: 60.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055 Vamos estimular “o sentar” com apoio para o melhor ',
                                  stg2: 'controle da cabeça',
                                  stg3:
                                      '. Tirar as costas do apoio e trazer o corpo um pouco para'
                                      ' frente (pequeno deslocamento) e retornar em seguida, como uma'
                                      ' brincadeira conhecida como Serra-serra. ',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 As brincadeiras com ${store.controllerKidName.text} e seus familiares '
                                      'são divertidas. Aproveitem!'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055 Sorria e estimule ${store.controllerKidName.text} a sorrir. Cante com movimento '
                                      'labiais bem claros e visíveis, para que ${store.controllerKidName.text} possa visualizar os '
                                      'movimentos e perceber o som.',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 A rotina de cuidados com ${store.controllerKidName.text} depende do '
                                      'ritmo dele com o seu cuidador. Tudo está entrando na rotina da casa.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Radin(UID, 'DEV4TASK2'),
                          const SizedBox(
                            height: 60.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055 Os movimentos corporais podem ser estimulados também '
                                      'por meio da pele. Antes ou depois do banho passe uma escova '
                                      'bem macia nos braços, pernas, barriga e nas costas da criança, '
                                      'para o estímulo sensorial.',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 O corte das pequenas unhas de ${store.controllerKidName.text} deve ser'
                                      ' feito de forma delicada, aproveite o período do sono, quando '
                                      '${store.controllerKidName.text} estiver relaxado (a), para cortar. As unhas grandes podem '
                                      'facilitar o arranhar e também mantém sujeiras.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Radin(UID, 'DEV4TASK3'),
                          const SizedBox(
                            height: 60.0,
                          ),
                          
                               textCTRST(
                                  stg1: '\u2055 Deixar de ',
                                  stg2: 'barriguinha para baixo',
                                  stg3:
                                      'com alguns brinquedos próprios para a idade ao alcance dos '
                                      'olhos de ${store.controllerKidName.text}. É momento de perceber os objetos, espaços e os sons do '
                                      'local, sem a interferência de adultos. Todas as ações e '
                                      'tentativas de novos movimentos ajudarão na busca de novas conquistas.',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 As crianças expressam o movimento e suas '
                                      'mudanças vão acontecendo muito rápido. Essa evolução faz parte '
                                      'para o desenvolvimento. Registre os movimentos apresentados.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Radin(UID, 'DEV4TASK4'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          
                               textCTRST(
                                  stg1: '\u2055 Permanecer um tempo em ',
                                  stg2: 'todas as posições corporais',
                                  stg3: ', com exploração do espaço.',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 A exploração do espaço começa a fazer parte'
                                      ' da rotina. Conviver com os familiares colabora para o desenvolvimento.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          
                               textCTRST(
                                  stg1:
                                      '\u2055 Apresentar sempre objetos diferentes (cores, sons e formas).',
                                )
                              , textCTRST(
                                  stg1:
                                      '\u2055 A observação cuidadosa faz com que novas '
                                      'situações possam ser percebidas em seus movimentos, expressões '
                                      'sonoras e nas expressões do rosto.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Radin(UID, 'DEV4TASK5'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
