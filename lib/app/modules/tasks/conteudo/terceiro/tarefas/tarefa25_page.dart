import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa25Page extends StatefulWidget {
  final String title;
  const Tarefa25Page({Key? key, this.title = 'Tarefa25Page'}) : super(key: key);
  @override
  Tarefa25PageState createState() => Tarefa25PageState();
}

class Tarefa25PageState extends State<Tarefa25Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV25").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV25';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV25';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 25"),
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
                                "SIGA A 25ª TAREFA EM CASA",
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
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/fig79-10.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-1.jpeg',
                                          ),
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Todas as aquisições de movimentos'
                                              ' que ${store.controllerKidName.text} adquiriu são importantes para o seu desenvolvimento. É'
                                              ' essencial que você continue as tarefas e os estímulos, cada '
                                              'conquista do movimento será fundamental para ${store.controllerKidName.text} nas próximas '
                                              'idades. A repetição dos movimentos deve acontecer para que novos'
                                              ' movimentos cheguem e sejam conquistados.'),
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
                                      MediaQuery.of(context).size.height * 1.22,
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
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'Utilize sua voz como recurso para chamar'
                                              ' a atenção de ${store.controllerKidName.text} com diferentes tons e vozes, estimulando sua '
                                              'audição. Como resultado irá estimular ${store.controllerKidName.text} a falar.'),
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
                                          20.0, 10.0, 20.0, 40.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          'É preciso cuidar do ambiente para '
                                              'proteger ${store.controllerKidName.text} de ocorrências alérgicas, o ambiente deve ser limpo'
                                              ' diariamente, e evitar cortinas, tapetes, almofadas. A casa '
                                              'deverá manter arejada com janelas abertas e cuidado com mofo e '
                                              'umidade nas paredes podem desencadear situação de adoecimento de'
                                              ' ${store.controllerKidName.text}.'),
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
                                                onPressed: () {Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskTwentFi())
                                                    )
                                                  );},
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
class TaskTwentFi extends StatefulWidget {
  const TaskTwentFi({super.key});

  @override
  State<TaskTwentFi> createState() => _TaskTwentFiState();
}

class _TaskTwentFiState extends State<TaskTwentFi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 25"),
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
                height: MediaQuery.of(context).size.height * 6.5,
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
                                  // ignore: prefer_const_constructors
                                  EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
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
                          )
                        ],
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Estimule a independência de ${store.controllerKidName.text}! Deixe-o(a) brincar livre, de ',
              stg2: "barriguinha para cima e barriguinha para baixo",
              stg3: ". Deixe ${store.controllerKidName.text} rolar livremente e buscar com os próprios movimentos os brinquedos ou objetos próximos."
          ),textCTRST(stg1: '\u2055 Nessa idade, ${store.controllerKidName.text} começa a ficar mais tempo acordado, por isso é importante redobrar a atenção para quedas e acidentes. O ambiente de maior tempo de permanência de ${store.controllerKidName.text} deve ser seguro e bem ventilado, possibilitando os movimentos para as brincadeiras com supervisão de um adulto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A brincadeira é encaixe! Vamos estimular ${store.controllerKidName.text} a pegar uma peça de brinquedo ou objeto menor e colocar dentro de um lugar maior. Uma ideia! Vamos pegar algumas bolas pequenas e de diferentes tamanhos e na posição sentada deixe ${store.controllerKidName.text} pegar as bolas de colocar dentro de um pote. O movimento pode ser de guardar as bolas no pote ou ao contrario, tirar as bolas do pote.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Durante o banho de ${store.controllerKidName.text}, ensine as partes do corpo que você estiver banhando. “Agora vamos lavar a barriguinha”, “agora vamos lavar os braços”, “é hora de lavar o pé” assim por diante. Banho pode ser uma grande brincadeira.'
          ),textCTRST(stg1: '\u2055 Aprenda a lidar com as ações de ${store.controllerKidName.text}. O desenvolvimento proporciona novos aprendizados, então observe ${store.controllerKidName.text} em novas situações no espaço do ambiente, resposta nas brincadeiras, visualização de um brinquedo e/ou objeto, movimento de deslocamento para alcançar um brinquedo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vá interagindo vocalizando suas ações. Sempre que possível mantenha o contato visual “olho no olho” e sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar, responda como se estivem conversando normalmente.'
          ),
          const SizedBox(height: 15.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Deixe ${store.controllerKidName.text} ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                const TextSpan(text: 'sentado (a)', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' em cima de uma almofada, ofereça a mão para ${store.controllerKidName.text} e deixe ${store.controllerKidName.text} executar o movimento para a posição em '),
                const TextSpan(text: 'pé', style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: '. Repete algumas vezes o movimento de sentar e levantar.'),
              ],
            ),
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Deixe seus brinquedos favoritos a, pelo menos, um metro de ${store.controllerKidName.text} e incentive para que ${store.controllerKidName.text} os busque, alcançando o brinquedo estimule ${store.controllerKidName.text} para ',
              stg2: "posição sentada",
              stg3: " para brincar um pouco."
          ),textCTRST(stg1: '\u2055 São muitos os afazeres durante o dia, uma boa organização para as tarefas e horários determinados para as atividades de ${store.controllerKidName.text} ajudará a manter uma rotina tranquila e, ${store.controllerKidName.text} permanecerá calmo permitindo o desenvolvimento de novas habilidades.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Estimule ${store.controllerKidName.text} com diferentes brincadeiras e chama a atenção com palavras, “vem”, “cadê ${store.controllerKidName.text}”, “vêm com a mamãe”.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Faça cócegas! Desta forma, além de estimular as expressões e a linguagem (ao emitir sons) você irá criar um ambiente leve e saudável para uma conexão interativa saudável entre você e ${store.controllerKidName.text}, o momento deve ser muito agradável para você também!'
          ),textCTRST(stg1: '\u2055 Sempre elogie ${store.controllerKidName.text} pelos seus aprendizados. Mesmo que erre ou não execute a tarefa como solicitada, ensine novamente a forma apresentada inicialmente. O ambiente para a atividade de aprendizagem deve ser agradável e acolhedor.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Agora é ideal elogiar! Elogie o sorriso, os movimentos que ${store.controllerKidName.text} está aprendendo, tudo é importante para o desenvolvimento adequado. Você é muito importante neste processo do desenvolvimento!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK4'),

          const SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Deixe algum apoio perto de ${store.controllerKidName.text} e na posição ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                const TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' estimule ${store.controllerKidName.text} arrastar/engatinhar no sentido do apoio e levantar. Se ${store.controllerKidName.text} não conseguir subir sozinho para a '),
                const TextSpan(text: 'posição em pé', style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ', você pode ajudar, mas lembre-se, é importante reduzir as ajudas para concluir os movimentos, deixando independente.'),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Fala às pessoas mais próximas, sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou até esse momento. Orgulhe-se de sua dedicação, mamãe/papai/avós/irmãos/cuidadores! Cada criança apresenta suas particularidades no desejo de executar tarefas ensinadas no dia a dia. Observe a preferência de ${store.controllerKidName.text} para executar os movimentos e brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Ensine às pessoas mais próximas sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou até esse momento. Orgulhe-se de sua dedicação, mamãe/papai/avós/irmãos/cuidadores!'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Estimule ${store.controllerKidName.text} demostrar seus avanços ao papai e/ou aos familiares, parabenizando e valorizando seus esforços.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV25TASK5'),
          const SizedBox(height: 10.0,),
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
