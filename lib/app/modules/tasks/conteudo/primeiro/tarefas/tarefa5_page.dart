import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa5Page extends StatefulWidget {
  final String title;
  const Tarefa5Page({Key? key, this.title = 'Tarefa5Page'}) : super(key: key);
  @override
  Tarefa5PageState createState() => Tarefa5PageState();
}

class Tarefa5PageState extends State<Tarefa5Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 5"),
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
                                "SIGA A 5ª TAREFA EM CASA",
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
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child:
                                              Image.asset('images1/Gif1.gif'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child:
                                              Image.asset('images1/Gif3.gif'),
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
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Oferecer objetos para ${store.controllerKidName.text} segurar'
                                              ' com as mãos e explorar com o olhar. Estimule a transferência de '
                                              'posição corporal quando ${store.controllerKidName.text} estiver deitado em superfície plana.'),
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
                                          '- Falar a silabas (aaaa, eeee, iiii, '
                                              'oooo, uuuuu) e cantar.'),
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
                                                20.0, 10.0, 20.0, 25.0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                '- Manter ${store.controllerKidName.text} com roupas adequadas'
                                                    ' para a estação do ano.\n- A grade do berço deverá permanecer '
                                                    'fechada para proteger ${store.controllerKidName.text}. O berço não deve ser posicionado '
                                                    'perto de janelas.'),
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
                                                      builder: ((context) => const TaskFive())
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

class TaskFive extends StatefulWidget {
  const TaskFive({super.key});

  @override
  State<TaskFive> createState() => _TaskFiveState();
}
// Container>Column[Expanded>LayoutBuilder>SingleChildScrollView>Container>Padding>Column]

class _TaskFiveState extends State<TaskFive> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV5").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV5';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV5';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 5"),
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
                    height: MediaQuery.of(context).size.height * 4,
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
                          stg1:
                              '\u2055 As brincadeiras devem continuar com brinquedos ou '
                              'situações que estimulem ${store.controllerKidName.text} a ',
                          stg2: 'mudar de posição corporal',
                          stg3:
                              '. Lateral para barriga para cima e lateral barriga para baixo.',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 O local de permanência de ${store.controllerKidName.text} deverá ser '
                                'seguro, com claridade e boa ventilação.'),
                        const SizedBox(
                          height: 15.0,
                        ),
                        textCTRST(
                          stg1:
                              '\u2055  Vamos nomear os objetos e brinquedos, sempre '
                              'disponibilizando a imagem do movimento da boca na formação '
                              'da palavra.',
                        ),
                        textCTRST(
                            stg1: '\u2055 Os períodos de tranquilidade deverão '
                                'intercalar com o próprio movimento e rotina da casa.'),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Radin(task:'DEV5TASK1'),

                        const SizedBox(
                          height: 60.0,
                        ),
                        textCTRST(
                          stg1: '\u2055 A ',
                          stg2: 'posição sentada',
                          stg3:
                              ' deve ser estimulada e mostrar brinquedos com deslocamento '
                              'de um lado para o outro também, assim ${store.controllerKidName.text} será estimulado(a) a girar'
                              ' a cabeça com o olhar de um lado para o outro.',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 Escolha uma roupinha que facilita a troca e'
                                ' gera proteção evitando lesões na pele (alfinetes).'),
                        // SizedBox(height: group=='EST'?15.0:0.0,),
                        textCTRST(
                            stg1:
                                "Construa pequenas frases sempre disponibilizando a imagem e "
                                "a articulação da boca na formação da palavra."),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Radin(task:'DEV5TASK2'),

                        const SizedBox(
                          height: 60.0,
                        ),
                        textCTRST(
                          stg1:
                              '\u2055 O momento do relaxamento e estímulo sensorial do tato '
                              'deverá continuar antes do banho. Brinque de beijar, de passar a'
                              ' mão nos pezinhos. Adoram!',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 Observe sempre o ambiente, cuidado com os '
                                'insetos e bichos peçonhentos! ${store.controllerKidName.text} deve ser sempre observado por'
                                ' um adulto.'),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Radin(task:'DEV5TASK3'),

                        const SizedBox(
                          height: 60.0,
                        ),
                        textCTRST(
                          stg1: '\u2055 Com ${store.controllerKidName.text} deitado ',
                          stg2: 'de barriga para cima',
                          stg3:
                              ' você poderá movimentar o brinquedo de um lado para outro, '
                              'estimulando ${store.controllerKidName.text} a girar a cabeça da lateral para o '
                              'centro do corpo e depois do centro para a outra lateral.',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 O período do sono e acordado com o tempo '
                                'irá modificando, passará um período maior acordado.'),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Radin(task:'DEV5TASK4'),

                        const SizedBox(
                          height: 60.0,
                        ),
                        textCTRST(
                          stg1:
                              '\u2055 Explorar todas as posições corporais e estimular o '
                              'girar da cabeça do centro para a lateral nas posições deitada '
                              'e sentada. ',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 O cuidado deverá ser observado com crianças'
                                ' próximas de ${store.controllerKidName.text}. A vontade é de brincar, mas pode oferecer '
                                'riscos.'),
                        const SizedBox(
                          height: 15.0,
                        ),
                        textCTRST(
                          stg1:
                              '\u2055 Durante esses momentos aproveite para brincar e '
                              'cantar para o ${store.controllerKidName.text}.  Use a imaginação e a criatividade.',
                        ),
                        textCTRST(
                            stg1:
                                '\u2055 O desenvolvimento está acontecendo, vamos '
                                'em frente.'),
                        const SizedBox(
                          height: 10.0,
                        ),
          ]),
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
