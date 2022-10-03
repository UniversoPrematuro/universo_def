import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa9Page extends StatefulWidget {
  final String title;
  const Tarefa9Page({Key? key, this.title = 'Tarefa9Page'}) : super(key: key);
  @override
  Tarefa9PageState createState() => Tarefa9PageState();
}

class Tarefa9PageState extends State<Tarefa9Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 9"),
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
                                "SIGA A 9ª TAREFA EM CASA",
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
                                    GridView.count(
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      children: <Widget>[
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static1.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static2.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static3.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif1.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif2.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif3.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif4.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif5.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif6.gif'),
                                        ),
                                      ],
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
                                          20.0, 10.0, 20.0, 40.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Explorar os movimentos, tudo '
                                              'que já foi alcançado até esse momento. Estamos quase mudando de '
                                              'etapa, “Parabéns!”.\n\nEstimular as diferentes posições corporais,'
                                              ' os movimentos de braços e pernas, o pegar o brinquedo, emitir '
                                              'os sons, sempre olho no olho para aprender mais coisas.'
                                              '- '
                                              'Aproveite esse momento, estamos quase mudando de etapa “Parabéns!”.'),
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
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskNines())
                                                    )
                                                  );
                                          },
                                        ),
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

class TaskNines extends StatefulWidget {
  const TaskNines({super.key});

  @override
  State<TaskNines> createState() => _TaskNinesState();
}

class _TaskNinesState extends State<TaskNines> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV9").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV9';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV9';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 9"),
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
                height: MediaQuery.of(context).size.height * 4.5,
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
                      Radin(task: 'DEV9TASK1'),
                      const SizedBox(
                        height: 60.0,
                      ),

                      textCTRST(
                        stg1:
                            '\u2055 A massagem na barriguinha com movimentos de mão com '
                            'leve compressão na direção da costela para baixo ou movimentos '
                            'circulares ajuda o funcionamento do intestino. ',
                      ),
                      textCTRST(
                          stg1: '\u2055 Na hora do choro, abrace e ofereça o '
                              'aconchego para ${store.controllerKidName.text}. O contato pele-a-pele traz conforto e '
                              'segurança e logo estará tudo tranquilo. '),

                      textCTRST(
                        stg1:
                            '\u2055 Para incentivar a imitação de sons, diga: papapa... '
                            'Papai ou mamama Mamãe.',
                      ),
                      // : Container(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV9TASK2'),
                      const SizedBox(
                        height: 60.0,
                      ),

                      textCTRST(
                        stg1:
                            '\u2055 Brincar com o pezinho dele/a e estimular ${store.controllerKidName.text} a '
                            'olhar e segurar o seu próprio pé.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Nesta fase a pele de ${store.controllerKidName.text} é muito delicada '
                              'então lave as roupas com produtos neutros, hipoalérgicos para '
                              'evitar reações alérgicas e desconfortos.'),

                      textCTRST(
                        stg1:
                            '\u2055 Encorajar a expressão e uso de qualquer som que a '
                            'criança verbalize. Responda e dê tempo para ${store.controllerKidName.text} se manifestar.'
                            ' Torne esse exercício um momento de interação.',
                      ),

                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: 'DEV9TASK3'),
                      const SizedBox(
                        height: 60.0,
                      ),

                      textCTRST(
                        stg1: '\u2055 Vamos cantar e estimular ',
                        stg2: 'todos os movimentos corporais',
                        stg3:
                            ' até agora explorados. Estamos indo muito bem com a estimulação.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Estamos vencendo as etapas, não esqueça de '
                              'seguir as indicações da equipe de saúde que atende ${store.controllerKidName.text}. Cada '
                              'criança tem suas necessidades e indicações próprias, então, não '
                              'compare ${store.controllerKidName.text} com outras crianças.'),

                      textCTRST(
                        stg1:
                            '\u2055 Para favorecer a interação e o contato visual, '
                            'posicione-se de frente para a criança para conversar e cantar '
                            'para ela, enfatizando suas expressões faciais, com variações '
                            'no tom e no ritmo da voz.',
                      )
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
