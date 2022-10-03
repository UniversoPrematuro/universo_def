import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/components/radin.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../tasks_store.dart';


class Tarefa2Page extends StatefulWidget {
  final String title;
  const Tarefa2Page({Key? key, this.title = 'Tarefa2Page'}) : super(key: key);
  @override
  Tarefa2PageState createState() => Tarefa2PageState();
}

class Tarefa2PageState extends State<Tarefa2Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 2"),
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
                                "SIGA A 2ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .8,
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
                                          child: Image.asset(
                                              'images1/static1.png'),
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
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- ${store.controllerKidName.text} deverá ser colocado nas'
                                              ' posições de barriguinha para baixo e para cima,'
                                              ' quando estiver acordado.\n- Estimule os movimentos dos braços e'
                                              ' das pernas e depois deixe ${store.controllerKidName.text} se movimentar de forma espontânea.'),
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
                                      MediaQuery.of(context).size.height * 1,
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
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                '- Estimule-o com diferentes sons, '
                                                    'mostre brinquedos coloridos e com som. '),
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
                                                '\u25CF Atenção!',
                                                '- Sempre que ${store.controllerKidName.text} estiver sem '
                                                    'supervisão de um adulto, verifique a segurança do espaço. '
                                                    'Cuidado com quedas.\n- Não brincar com ${store.controllerKidName.text} após a alimentação/dieta.'),
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
                                                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const TaskTwo())));
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

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV2").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV2';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV2';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 2"),
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
                                child: Image.asset("images1/Personagemai.png"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
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
                          ),
                        ],
                          ),
                          const SizedBox(
                        height: 40.0,
                      ),
                      textCTRST(
            stg1: '\u2055 É hora de cantar e bater palmas para ${store.controllerKidName.text} observar (',
            stg2: 'posição de barriguinha para baixo e para cima',
            stg3: ').  Não esquecer de executar essas ações no período da manhã'
                ' e da tarde.',
          ),textCTRST(stg1: '\u2055 Não esquecer de executar a rotina do dia. '
              'Manter os horários dos cuidados.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É momento de alegria e interação, faça festa, '
                'estimule a sorrir e a emitir sons, faça-o participar com '
                'expressões ou qualquer tentativa de interação. Todas são '
                'válidas. ',
          ),textCTRST(stg1: '\u2055 Cuidado com os engasgos. Manter sempre em '
              'posição segura.'),
          const SizedBox(height: 10.0,),
          Radin(task: 'DEV2TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} deve ficar na ',
            stg2: 'posição lateral direita e depois esquerda',
            stg3: ', aproveite para mostrar brinquedos e conversar bastante '
                'para que ele possa reconhecer os diversos sons.',
          ),textCTRST(stg1: '\u2055 Na situação de regurgitação/vômito, '
              'inclinar ${store.controllerKidName.text} na direção de saída do conteúdo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Responda sempre às tentativas realizadas por ${store.controllerKidName.text} ao tentar interagir, '
                'seja com olhar ou sorriso reaja como se estivesse entendendo e'
                ' conversando.',
          ),textCTRST(stg1: '\u2055 Todas as orientações dos profissionais que '
              'acompanham ${store.controllerKidName.text} deverão ser seguidas.'),
          const SizedBox(height: 10.0,),
          Radin(task: 'DEV2TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Esse momento é para ${store.controllerKidName.text} permanecer com movimentação '
                'espontânea. Deixar de ',
            stg2: 'barriguinha para baixo e depois para cima.',
          ),textCTRST(stg1: '\u2055 Esse momento é para ${store.controllerKidName.text} permanecer com '
              'movimentação espontânea, deixe brincar.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Interaja com ${store.controllerKidName.text} por meio de expressões faciais, pelo '
                'toque e por olhares acolhendo e conversando.',
          ),textCTRST(stg1: '\u2055 Manter a carteira de vacinação em dia.'),
          const SizedBox(height: 10.0,),
          Radin(task: 'DEV2TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 A ',
            stg2: 'posição sentada',
            stg3: ' sentada pode ser inserida sempre com apoio (carrinho, na '
                'cama com suporte.....). Essa posição será boa para as '
                'brincadeiras com as mãos e pernas, deixe ${store.controllerKidName.text} buscar o brinquedo.',
          ),textCTRST(stg1: '\u2055 A segurança de ${store.controllerKidName.text} deve ser rigorosa. Para'
              ' o transporte, escolha a forma ideal para a segurança.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nesse momento, incentive ${store.controllerKidName.text} a vocalizar. Faça '
                'movimentos labiais leves e lentos para que dê tempo de '
                'assimilar os sons e a imagem dos movimentos. É ótimo para uma '
                'interação.',
          ),textCTRST(stg1: '\u2055 Proporcione a interação com ${store.controllerKidName.text} de forma agradável.'),
          const SizedBox(height: 10.0,),
          Radin(task: 'DEV2TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos ver como ${store.controllerKidName.text} está se ',
            stg2: 'movimentando nas posições lateral, barriga para baixo, para cima e sentado',
            stg3: ' (cantar uma música, mostrar brinquedos e estimular a pegar o brinquedo).',
          ),textCTRST(stg1: '\u2055 Siga as orientações médicas para o banho de sol.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Estimule ${store.controllerKidName.text} a emitir sons e a sorrir. Quando sorrir, '
                'retorne interagindo com um largo sorriso para que ele entenda '
                'que interagiu com você por meio do sorriso. Sempre olho no olho.',
          ),textCTRST(stg1: '\u2055 Lembre-se da importância da lavagem de mãos'
              ' antes de manipular objetos e executar o cuidado de ${store.controllerKidName.text}.'),
          const SizedBox(height: 10.0,),
          Radin(task: 'DEV2TASK5'),
          // ElevatedButton(onPressed: (){
          //   tStore.uploadTaskToFirebase();
          // }, child: Text("enviar")),

          const SizedBox(height: 60.0,),
          // redDoubt(context,UID),

          const SizedBox(height: 60.0,),
          // Text(
          //     'CHEGOU A HORA: APROVEITE E REGISTRE CADA MOMENTO COM FILMAGENS E '
          //         'FOTOS NESTE APLICATIVO. Tire a foto em todas as posições',
          //     style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20,
          //         color: Colors.black
          //     ),
          //   textAlign: TextAlign.center,
          // ),
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
