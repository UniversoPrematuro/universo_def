import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa15Page extends StatefulWidget {
  final String title;
  const Tarefa15Page({Key? key, this.title = 'Tarefa15Page'}) : super(key: key);
  @override
  Tarefa15PageState createState() => Tarefa15PageState();
}

class Tarefa15PageState extends State<Tarefa15Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 15"),
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
                                "SIGA A 15ª TAREFA EM CASA",
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
                                          height: 320.0,
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
                                              'images1/46 IMAGEM 08.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/46 IMAGEM 04.png',
                                            width: 250,
                                          ),
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
                                              'A posição de barriguinha para '
                                                  'baixo ajuda para o ganho do desenvolvimento motor, a permanência'
                                                  ' nesta posição um pouquinho todos os dias ajuda para alcançar os'
                                                  ' marcos do desenvolvimento.'),
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
                                      MediaQuery.of(context).size.height * 1.31,
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
                                              // R: 239, G: 121, B: 91
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 101, 188, 89),
                                                width: 3.0,
                                              )),
                                          child: Image.asset(
                                              'images1/ballon91.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/ballon9.png'),
                                        ),
                                      ],
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
                                                'A linguagem é desenvolvida com o '
                                                    'estímulo recebido do ambiente, você faz parte deste processo. '
                                                    'Converse, canta e dança.......'),
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
                                                '\u25CF Cuidado!',
                                                'Ao transportar ${store.controllerKidName.text}, se atente à '
                                                    'maneira correta que os profissionais sugerem: no carro, sempre '
                                                    'em uma cadeira própria para a idade.'),
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
                                                      builder: ((context) => const TaskFif())
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
class TaskFif extends StatefulWidget {
  const TaskFif({super.key});

  @override
  State<TaskFif> createState() => _TaskFifState();
}

class _TaskFifState extends State<TaskFif> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 15"),
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
                height: MediaQuery.of(context).size.height * 4.3,
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
            stg1: '\u2055 Deixe ${store.controllerKidName.text} sentado(a), com apoio de almofadas. Mostre '
                'brinquedos para ${store.controllerKidName.text}, de modo que faça com que estique os '
                'braços para agarrar o brinquedo. É momento da tentativa de '
                'pegar sozinho/a o brinquedo e explorar. Oferecer brinquedos de'
                ' formas e texturas diferentes, diversas cores e tamanhos '
                'ajudam para o desenvolvimento sensorial.',
          ),textCTRST(stg1: '\u2055 Cuidado com as brincadeiras de crianças mais'
              ' velhas, neste momento sempre deverá ter supervisão do adulto por'
              ' perto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Expressões, quando ${store.controllerKidName.text} sorrir, retorne interagindo '
                'com um largo sorriso para que entenda que interagiu com você '
                'por meio do sorriso. Sempre que ${store.controllerKidName.text} conseguir pegar o '
                'brinquedo dê parabéns e incentivo para repetir a ação.'
          ),textCTRST(stg1: '\u2055 Não permita que ${store.controllerKidName.text} brinque com utensílios'
              ' domésticos, ofereça somente brinquedos próprios para a idade de'
              ' material seguro.'),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV15TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na posição sentado com apoio brinque de face a face e '
                'de olho no olho, estimule a imitação dos sons (ah..., papa, '
                'mama, é...., dada, uhhh, eh...).',
          ),textCTRST(stg1: '\u2055 Nessa fase, ainda é importante esterilizar '
              'adequadamente objetos que ${store.controllerKidName.text} use no seu dia a dia e mesmo os '
              'brinquedos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Segure ${store.controllerKidName.text} no colo de frente para a outra pessoa e '
                'deixe ${store.controllerKidName.text} inclinar um pouquinho para a frente para controlar '
                'a cabeça e parte superior do tronco. A outra pessoa pode '
                'mostrar brinquedo, conversar e fazer folia. Vamos animar este '
                'momento.'
          ),textCTRST(stg1: '\u2055 Não deixe nenhum brinquedo, travesseiros e '
              'algum tipo de pano solto no berço, proteja ${store.controllerKidName.text} de acidentes. '
              '${store.controllerKidName.text} não deve dormir na cama dos pais, pois pode acontecer '
              'sufocação.'),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV15TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Hora de estimular a percepção da criança. Ofereça à '
                '${store.controllerKidName.text}, de ',
            stg2: 'barriguinha para cima',
            stg3: ', um brinquedo colorido, se possível que emita sons, e '
                'deixe-o em cima de ${store.controllerKidName.text} (altura do peito). Incentive ${store.controllerKidName.text} a '
                'tentar segurar o brinquedo.',
          ),textCTRST(stg1: '\u2055 Crie uma rotina para ${store.controllerKidName.text}. Coloque ${store.controllerKidName.text} '
              'para dormir sempre no mesmo horário, assim será criado uma '
              'rotina de sono mais adequada a você e ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Aproveite esse momento para conversar com ${store.controllerKidName.text}, a '
                'linguagem é muito estimulada nesse momento. A frequência do '
                'diálogo com ${store.controllerKidName.text} é primordial. Toda ação deve ser demonstrada '
                'e nomeada. “Olha o urso (brinquedo) ”, “cadê a bola amarela”, '
                'entre outras situações da casa.'
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV15TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Brinque com ${store.controllerKidName.text} fazendo caretas, abra bem a boca, '
                'coloque a língua para fora, faça bicos e emita sons parecidos '
                'com os que ele (a) faz para estimular a imitação. ',
          ),textCTRST(stg1: '\u2055 Fique atenta em ambientes com escadas, '
              'evite quedas e acidentes. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Cada movimento da face deverá seguir um som, ruído e '
                'expressão. Imitar caminhão, caretinha (bichinho)......'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} deve manter-se distante no momento das'
              ' tarefas no ambiente da cozinha. Não deixe ${store.controllerKidName.text} próximo ao fogão'
              ' e materiais de risco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos lembrar de estimular o rolar. Barriguinha '
                  'para cima, virar para barriguinha para baixo. Barriguinha '
                  'para baixo, virar para cima. Estes movimentos podem ser '
                  'realizados com a sua ajuda. Logo ${store.controllerKidName.text} estará executando '
                  'sozinho, precisamos treinar o movimento.'
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV15TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos cantar e estimular todos os movimentos '
                'corporais, até agora explorados. Na hora de trocar a fralda ou '
                'na hora do banho, nomeia as partes do corpo e mostre para ${store.controllerKidName.text}'
                '. Mostre o pé para visualização, fale o nome pé para escutar e'
                ' toque com uma pressão leve no pé para sentir. Estamos '
                'estimulando os sentidos sensoriais. Pode repetir com a mão'
                ' também.',
          ),textCTRST(stg1: '\u2055 Cada família tem um modo de cuidar de seus '
              'filhos, mas é preciso que tenha uma rotina diária, com horários '
              'para o banho, alimentação, para o sono e também para ${store.controllerKidName.text} brincar'
              '. ${store.controllerKidName.text} pode ficar nervoso e inseguro quando há muita alteração no'
              ' seu dia-a-dia.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 De barriguinha para baixo deixar na frente de ${store.controllerKidName.text} '
                'brinquedo que emite som e de cores. Observa como será a reação'
                ' de ${store.controllerKidName.text} e depois estimule mostrando e movimentando o brinquedo'
                ' para que ${store.controllerKidName.text} tenha interesse em buscá-lo. Ao final deixe o '
                'brinquedo um pouquinho fora de alcance de ${store.controllerKidName.text} e deixe fazer '
                'força para alcança-lo.'
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV15TASK5'),

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
