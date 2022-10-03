import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/components/components.dart';
import 'package:universo_def/app/modules/tasks/components/radin.dart';

// import '../../../../models/kid_model.dart';
import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../tasks_store.dart';

// TODO: PERGUNTAS ESPECIFICAS PARA AS MAES 

class Tarefa1Page extends StatefulWidget {
  final String title;
  const Tarefa1Page({Key? key, this.title = 'Tarefa 1'}) : super(key: key);
  @override
  Tarefa1PageState createState() => Tarefa1PageState();
}

class Tarefa1PageState extends State<Tarefa1Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 1"),
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
                                "SIGA A 1ª TAREFA EM CASA",
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
                                          'Movimento',
                                          '${store.controllerKidName.text} deverá experimentar '
                                              'diferentes posições corporais para desenvolver-se melhor.\n- Não'
                                              ' deixe ${store.controllerKidName.text} por um período maior de que uma hora em cada posição.'
                                              '\n- Na hora do sono da noite deixe ${store.controllerKidName.text} dormir na posição '
                                              'lateral com um apoio nas costas.\n- Manter uma inclinação na '
                                              'cabeceira do berço. A cabecinha deverá ficar um pouco acima das '
                                              'perninhas.'),
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
                                      MediaQuery.of(context).size.height * 1.15,
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
                                          regText(
                                              '\u25CF Som',
                                              '- Converse com ${store.controllerKidName.text} sempre que estiver '
                                                  'em alerta. Mostre brinquedos coloridos e com som. Comunique-se '
                                                  'sempre com ${store.controllerKidName.text}, fixando olho no olho.'),
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
                                                          builder: ((context) =>
                                                              const TaskOne())));
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

enum SingingCharacter { sim, nao, parcial }

class TaskOne extends StatefulWidget {
  const TaskOne({super.key});

  @override
  State<TaskOne> createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  final EditStore store = Modular.get();
  final TasksStore tStore = Modular.get();

  @override
  void initState() {
    // tStore.getTasksFromFirebase();
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    // if(tStore.task.isEmpty){
    //         for(int i=1;i<6;i++){
    //           Task t = Task();
    //           t.user = tStore.uid;
    //           t.task = 'TASK$i';
    //           t.group = 'DEV1';
    //           t.status = 'I';
    //           t.date = DateTime.now().toString();

    //           // taskH.saveTask(t).then((_){});
    //         }
    //       }
      // for(int i=1;i<6;i++){
      //         Task t = Task();
      //         // t.user = UID;
      //         t.task = 'TASK$i';
      //         t.group = 'DEV1';
      //         t.status = 'I';
      //         tStore.task = 'TASK$i';
      //         tStore.group = 'DEV1';
      //         tStore.status = 'I';
      //         t.date = DateTime.now().toString();}
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV1").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV1';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV1';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });


    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 1"),
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
                        stg1:
                            '\u2055 Hoje vamos estimular ${store.controllerKidName.text} na ',
                        stg2: 'posição de barriguinha para baixo',
                        stg3: ', período da manhã e da tarde.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Manter a higiene: trocas de fraldas periódicas com'
                              ' limpeza na área e só depois colocar a fralda limpa.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1: '\u2055 Converse ',
                        stg2: 'olhando nos olhos',
                        stg3:
                            ', de ${store.controllerKidName.text} demonstrando tranquilidade, sua voz será logo reconhecida.',
                      ),
                      textCTRST(
                          stg1: '\u2055 Manter o horário do sono tranquilo.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task: "DEV1TASK1"),
                      textCTRST(
                        stg1:
                            '\u2055 Hoje é dia de brincadeiras na posição de ',
                        stg2: 'barriguinha para cima',
                        stg3: ', período da manhã e da tarde. ',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 À noite, deixe ${store.controllerKidName.text} dormir de barriguinha para cima.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos aproveitar o momento de barriguinha para cima e'
                            ' conversar com ${store.controllerKidName.text} suavemente, sempre com olhares fixos deixando'
                            ' ${store.controllerKidName.text} ouvir sua voz para que se sinta seguro(a)',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055  ${store.controllerKidName.text} não deve dormir em camas com o adulto.'),
                      Radin(task: "DEV1TASK2"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos mostrar brinquedos macios e coloridos e brincar'
                ' um pouco na posição de ',
            stg2: 'barriguinha para baixo',
            stg3: ', para começar a levantar a cabeça',
          ),
          textCTRST(stg1: '\u2055 Manter sempre um ambiente seco, sem mofo. '
              'Evitar cortinas, tapetes e brinquedo de pelúcia no quarto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Um ambiente tranquilo e horários certos para as '
                'tarefas, é importante para o desenvolvimento.',
          ),
          Radin(task: 'DEV1TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na ',
            stg2: 'posição de barriguinha para cima',
            stg3: ' vamos mostrar brinquedos macios e coloridos e estimular '
                '${store.controllerKidName.text} a pegar os brinquedos.',
          ),
          textCTRST(stg1: '\u2055 Na hora do choro, procure oferecer um aconchego.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nesses momentos converse, sorria e comemore qualquer '
                'interação. A verbalização deve ser realizada frequentemente.',
          ),
          textCTRST(stg1: '\u2055 O banho deve ser no horário tranquilo. '
              'Ofereça a hora do banho para ${store.controllerKidName.text} relaxar.'),
          const SizedBox(height: 10.0,),
          Radin(task: "DEV1TASK4"),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos cantar um pouquinho para ${store.controllerKidName.text}. Escolha '
                'uma música e verifique como ${store.controllerKidName.text} reage. Atenção: Cante a '
                'música para ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para cima e depois',
            stg3: ' para baixo',
          ),
          textCTRST(stg1: '\u2055 Verifique a temperatura do dia para escolher'
              ' a roupa de ${store.controllerKidName.text}. Dias quentes = roupas leves e Dias frios = '
              'roupas quentes. Evite deixar ${store.controllerKidName.text} transpirando. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Durante o canto de barriguinha para cima deixe-o ver '
                'os movimentos faciais suaves que geram o som que sai da sua '
                'boca. Faça isso com contato visual de "olho no olho".',
          ),
          textCTRST(stg1: '\u2055 Não dê medicamento sem a orientação médica.'),
          const SizedBox(height: 10.0,),
          Radin( task: 'DEV1TASK5'),

          // ElevatedButton(onPressed: (){
          //   tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          // }, child: Text("enviar"))


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
