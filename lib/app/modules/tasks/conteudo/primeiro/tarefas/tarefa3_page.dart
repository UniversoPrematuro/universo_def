import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa3Page extends StatefulWidget {
  final String title;
  const Tarefa3Page({Key? key, this.title = 'Tarefa3Page'}) : super(key: key);
  @override
  Tarefa3PageState createState() => Tarefa3PageState();
}

class Tarefa3PageState extends State<Tarefa3Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 3"),
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
                                "SIGA A 3ª TAREFA EM CASA",
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
                                              // R: 239, G: 121, B: 91
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 101, 188, 89),
                                                width: 3.0,
                                              )),
                                          child:
                                              Image.asset('images1/Gif5.gif'),
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
                                              'images1/static3.png'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
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
                                          '- Estimule o controle da cabeça '
                                              'nas diferentes posições corporais. Os movimentos dos braços e '
                                              'das pernas devem ser de forma espontânea e livre. Deixe ${store.controllerKidName.text} '
                                              'brincar! (Posição corporal – sentado, lateral, barriga para baixo'
                                              ' e para cima).'),
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
                                      MediaQuery.of(context).size.height * 1.12,
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
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Converse, cante e mostre os '
                                              'diferentes sons para ${store.controllerKidName.text}. '),
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
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cores',
                                                '- Mostrar objetos com cores (amarelo,'
                                                    ' vermelho, azul......).'),
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
                                                      'images1/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'A hora do banho é um ótimo momento'
                                                    ' para estimular os movimentos, mas cuidado para ${store.controllerKidName.text} não '
                                                    'escorregar.'
                                                    '- As cólicas são um incômodo normal para ${store.controllerKidName.text}, faz'
                                                    ' parte. Então, siga as orientações médicas, não oferecer nada '
                                                    'fora da prescrição de ${store.controllerKidName.text}.'),
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
                                                      builder: ((context) => const TaskThree())
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

class TaskThree extends StatefulWidget {
  const TaskThree({super.key});

  @override
  State<TaskThree> createState() => _TaskThreeState();
}

class _TaskThreeState extends State<TaskThree> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV3").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV3';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV3';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 3"),
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
                    height: MediaQuery.of(context).size.height * 5,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 70.0,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 100.0,
                                    child:
                                        Image.asset("images1/Personagemai.png"),
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
                                        image:
                                            AssetImage('images1/ballon9.png')),
                                  ),
                                  child: const Text(
                                    "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                    " dias, nestes primeiros meses.\nVamos Começar?",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textCTRST(
                            stg1: '\u2055 ${store.controllerKidName.text} deverá ',
                            stg2: 'movimentar a cabeça',
                            stg3:
                                ' de forma voluntária de um lado para o outro. Estimule ${store.controllerKidName.text}'
                                ' mostrando um brinquedo colorido e com som, movimentando de um'
                                ' lado para o outro. Intercale a brincadeira nas diferentes '
                                'posições corporais.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Para melhorar as cólicas de barriga, pode '
                                  'fazer massagem circular na barriguinha, dobrar as perninhas.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 O tom de voz, os gestos e as expressões faciais '
                                'suaves e bem articuladas da fala do adulto ajudará no '
                                'alcance de sensações e percepções para o desenvolvimento de '
                                '${store.controllerKidName.text}. Esses momentos são importantes.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Não deixar ${store.controllerKidName.text} perto, ou com visitas, que '
                                  'apresentem resfriado ou qualquer doença que ofereça risco '
                                  'por transmissão.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Radin(task:'DEV3TASK1'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          textCTRST(
                            stg1: '\u2055 Nas ',
                            stg2: 'diferentes posições corporais',
                            stg3:
                                ', deixar ${store.controllerKidName.text} alcançar e pegar o brinquedo. Oferecer objetos'
                                ' macios, leves e seguros.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Manter o ambiente tranquilo principalmente '
                                  'na hora do sono.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 Manter atenção ao tom de voz e as expressões faciais '
                                'para interagir com ${store.controllerKidName.text}. ',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Manter atenção para as novas conquistas de ${store.controllerKidName.text}.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Radin(task:'DEV3TASK2'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 Os movimentos corporais podem ser estimulados também '
                                'por meio da pele. Antes ou depois do banho uma massagem com '
                                'óleo específico para criança, provocara o relaxamento e '
                                'estímulo sensorial.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 No banho utilizar sabonete hipoalergênico. '
                                  'A temperatura da água da banheira deverá estar quentinha, mas '
                                  'confortável.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 Cante músicas calmas e agradáveis que ajudem no '
                                'relaxamento, principalmente na hora do soninho. ',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Evitar ambientes movimentados e com '
                                  'barulhos, pois podem estressar ${store.controllerKidName.text}.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Radin(task:'DEV3TASK3'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          textCTRST(
                            stg1: '\u2055 Estimular o movimento da ',
                            stg2:
                                'posição lateral para a posição de barriguinha para baixo',
                            stg3:
                                ', sempre com o acompanhamento. A posição sentada para as '
                                'brincadeiras com as mãos e pernas.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 A posição que mantém a cabeça de ${store.controllerKidName.text} '
                                  'sempre mais elevada, do que o resto do corpo, pode evitar o refluxo.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 No momento do banho aproveite para transmitir o toque'
                                ' da água juntamente com conversas e músicas infantis passando'
                                ' estímulos de tranquilidade e de afeto',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Temos que trabalhar os vínculos de ${store.controllerKidName.text} com'
                                  ' a família, devemos fortalecer com o convívio tranquilo e saudável.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Radin(task:'DEV3TASK4'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          textCTRST(
                            stg1: '\u2055 Agora vamos ver a ',
                            stg2: 'movimentação em todas as posições corporais',
                            stg3:
                                ', você poderá estimular de forma voluntária. Registre!',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Registre! As mudanças e as conquistas de '
                                  '${store.controllerKidName.text} devem ser marcadas para as lembranças.'),
                          const SizedBox(
                            height: 15.0,
                          ),
                          textCTRST(
                            stg1:
                                '\u2055 Comemore cada conquista dos novos movimentos corporais.',
                          ),
                          textCTRST(
                              stg1:
                                  '\u2055 Comemore cada conquista dos novos movimentos'
                                  ' corporais.'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Radin(task:'DEV3TASK5'),

                          const SizedBox(
                            height: 60.0,
                          ),
                          // redDoubt(context,UID),
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
