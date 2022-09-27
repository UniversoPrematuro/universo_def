import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa16Page extends StatefulWidget {
  final String title;
  const Tarefa16Page({Key? key, this.title = 'Tarefa16Page'}) : super(key: key);
  @override
  Tarefa16PageState createState() => Tarefa16PageState();
}

class Tarefa16PageState extends State<Tarefa16Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 16"),
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
                                "SIGA A 16ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1.3,
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
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                      ),
                                      // decoration: BoxDecoration(
                                      //     border: Border.all(
                                      //         color: Color.fromARGB(
                                      //             255, 101, 188, 89),
                                      // width: 3.0)),
                                      child: Image.asset(
                                          'images1/46 IMAGEM 02.png'),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 20.0,
                                              right: 20.0,
                                              bottom: 20.0),
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 40.0),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'images1/ballon9.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'Todos os movimentos conquistados '
                                                  'são importantes, é hora de aumentar a dificuldade para vencermos'
                                                  ' as próximas etapas. Frente a uma conquista determinaremos outros'
                                                  ' passos a serem alcançados.'),
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
                                      MediaQuery.of(context).size.height * 1.43,
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                'Os sons da fala devem ser apresentados '
                                                    'de forma clara e deve identificar o objeto correspondente. As '
                                                    'músicas devem ser próprias para a idade, mantendo o ambiente '
                                                    'tranquilo.'),
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                'Não deixe de comparecer as '
                                                    'consultas periódicas, todas as informações de profissionais são '
                                                    'importantes para o desenvolvimento. Quando tiver alguma dúvida '
                                                    'sempre procurar a informação de forma segura, com profissionais.'
                                                    ' Não introduzir nada de novo sem a aprovação de um profissional.'),
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
                                                onPressed: () {},
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
class TaskSixt extends StatefulWidget {
  const TaskSixt({super.key});

  @override
  State<TaskSixt> createState() => _TaskSixtState();
}

class _TaskSixtState extends State<TaskSixt> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 16"),
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

                      SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Estimule a independência de ${store.controllerKidName.text}! Deixe-o/a brincar '
                'livre em todas as posições corporais. Intercalando a '
                'barriguinha para baixo, barriguinha para cima e sentado com apoio.',
          ),textCTRST(stg1: '\u2055 Mantenha os registros de ${store.controllerKidName.text} na caderneta '
              'de saúde da criança, é um documento importante de informação e '
              'direcionamento para a boa saúde. Todo o controle de vacina pode '
              'ser seguido pela caderneta.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 No seu colo deixe ${store.controllerKidName.text} firmar as perninhas como se '
                'estivesse na posição de pé, brinca como o pula-pula. O seu '
                'apoio (mãos) deverão ser posicionadas no tronco de ${store.controllerKidName.text} '
                '(embaixo do braço), somente para adquirir a percepção da '
                'posição e não para adquirir a posição de pé, ainda não estamos'
                ' na hora de trabalhar a função da posição de pé.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV16TASK1'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Hora do banho também pode ser hora de estimular o '
                'desenvolvimento de ${store.controllerKidName.text}! Proporcionar diferentes sensações na '
                'pele de com a espuma, sabonete e mãos. Cuidado com o rostinho,'
                ' principalmente nariz, boca e olhos.',
          ),textCTRST(stg1: '\u2055 Não se deve oferecer utensílios que um '
              'adulto está usando para ${store.controllerKidName.text}. A imunidade de um adulto é '
              'diferente da criança, a criança pode desenvolver infecções ao '
              'compartilhar objetos.   '),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Na posição sentada com apoio vamos estimular o '
                  'segurar com as duas mãos de ${store.controllerKidName.text}, oferecer brinquedos de '
                  'tamanhos e pesos diferentes, deixe ${store.controllerKidName.text} segurar sozinho e se'
                  ' o brinquedo cair no alcance de ${store.controllerKidName.text} deixe pegar sozinho.'
          ),
          SizedBox(height: 10,),
          // Radin(UID,'DEV16TASK2'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos ensinar ${store.controllerKidName.text} a bater palminha! Faça você o '
                'movimento e incentive ${store.controllerKidName.text} a te imitar, cante músicas alegres,'
                ' com ritmos animados, como o “Parabéns”.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está em uma fase de exploração e leva '
              'todos os objetos que encontra a boca. Tome cuidado com acidentes'
              ' evitáveis e mantenha bem limpo todos os objetos e locais.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Abuse das caretas! Faça caras engraçadas, '
                  'estimulando o sorriso e o brincar saudável. Sempre '
                  'reproduzindo as caretas com sons que representem a fala. '
                  'Essa brincadeira pode introduzir os familiares e amigos.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Sentado com inclinação para trás (${store.controllerKidName.text} conforto e/'
                  'ou carrinho) estimule a visualização do próprio pezinho de '
                  '${store.controllerKidName.text} e incentive a pegar o próprio pé. É importante que ${store.controllerKidName.text}'
                  ' explore as próprias mãos e pés.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV16TASK3'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de forma invertida! Alguém segura no '
                '${store.controllerKidName.text} colo e você fica na frente, brinque e chame ${store.controllerKidName.text} para vir'
                ' para o seu colo, deixe ${store.controllerKidName.text} manifestar os movimentos de forma'
                ' espontânea, que representem a vontade de ir para o seu colo.',
          ),textCTRST(stg1: '\u2055 Mantenha o ambiente alegre, sorria e converse'
              ' com ${store.controllerKidName.text}, o aconchego da casa faz ${store.controllerKidName.text} se sentir protegido.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Agora é ideal elogiar! Elogie o sorriso, os '
                  'movimentos que ele(a) está aprendendo, tudo é importante'
                  ' para o desenvolvimento ideal.'
          ),textCTRST(stg1: '\u2055 Evite lugares com muitas pessoas, como '
              'shoppings, supermercados e locais com muito barulho, nesta idade'
              ' as crianças precisam de tranquilidade e rotina para os hábitos'
              ' de vida.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV16TASK4'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Permitir o sono é importante para o desenvolvimento. '
                'Deixe uma luz fraca, somente um pontinho de claridade, é hora '
                'de descansar. É hora do silêncio “PSIU”. ',
          ),textCTRST(stg1: '\u2055 Ensine, às pessoas mais próximas, sobre a '
              'rotina e aprendizados que ${store.controllerKidName.text} conquistou até esse momento. '
              'Orgulhe-se de sua dedicação, mamãe/papai/avós/irmãos/cuidadores!'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ensine, às pessoas mais próximas, sobre a rotina e '
                'aprendizados que ${store.controllerKidName.text} conquistou até esse momento. Orgulhe-se '
                'de sua dedicação, mamãe/papai/avós/irmãos/cuidadores!',
          ),textCTRST(stg1: '\u2055 Não permaneça com ${store.controllerKidName.text} em lugares que têm '
              'pessoas fumando. A fumaça e o cheiro do cigarro faz mal à saúde.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 As brincadeiras e posições estimuladas para a '
                  'aquisição postural possibilitam a interação com outras '
                  'pessoas, para estimular a socialização em grupo.',
            stg2: '\n- Parabéns pelo seu empenho, isso faz a diferença.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV16TASK5'),

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
