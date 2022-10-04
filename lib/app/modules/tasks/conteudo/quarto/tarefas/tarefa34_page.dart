import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa34Page extends StatefulWidget {
  final String title;
  const Tarefa34Page({Key? key, this.title = 'Tarefa34Page'}) : super(key: key);
  @override
  Tarefa34PageState createState() => Tarefa34PageState();
}

class Tarefa34PageState extends State<Tarefa34Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 34"),
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
                                "SIGA A 34ª TAREFA EM CASA",
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
                                          height: 220.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          viewportFraction: 0.6,
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
                                              'images1/fig1012-2.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-8.jpeg',
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
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText('\u25CF Movimento',
                                          'Todas as aquisições de movimentos que ${store.controllerKidName.text} adquiriu são importantes para o seu desenvolvimento. É essencial que você continue as tarefas e os estímulos, cada conquista do movimento será fundamental para ${store.controllerKidName.text} nas próximas idades. A repetição dos movimentos deve acontecer para que novos movimentos cheguem e sejam conquistados.'),
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
                                      MediaQuery.of(context).size.height * 1.25,
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
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText('\u25CF Som',
                                          'Utilize sua voz como recurso para chamar a atenção de ${store.controllerKidName.text} com diferentes tons e vozes, estimulando sua audição. Como resultado irá estimular ${store.controllerKidName.text} a falar.'),
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
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText('\u25CF Cuidado!',
                                          'É preciso cuidar do ambiente para proteger ${store.controllerKidName.text}name de ocorrências alérgicas, o ambiente deve ser limpo diariamente, evitar cortinas, tapetes e almofadas. A casa deverá manter-se arejada, com janelas abertas e cuidada evitando mofo e umidade nas paredes, pois podem desencadear situação de adoecimento de ${store.controllerKidName.text}.'),
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
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskThirteenFo())
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
class TaskThirteenFo extends StatefulWidget {
  const TaskThirteenFo({super.key});

  @override
  State<TaskThirteenFo> createState() => _TaskThirteenFoState();
}

class _TaskThirteenFoState extends State<TaskThirteenFo> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV34").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV34';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV34';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 34"),
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
                height: MediaQuery.of(context).size.height * 6.8,
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
                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Estimule a independência de ${store.controllerKidName.text}! Deixe-o(a) brincar livre, de ',
            stg2: 'barriguinha para cima e barriguinha para baixo',
            stg3: '. Deixe bebê rolar livremente e buscar com os próprios movimentos os brinquedos ou objetos próximos.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} observa e imita cada vez mais o que seus familiares fazem, sendo muito divertido e encantador (a). Tenha cautela em como você se expressa perto de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A brincadeira é encaixe!Vamos estimular ${store.controllerKidName.text} a pegar uma peça de brinquedo ou objeto menor e colocar dentro de um lugar maior. Uma ideia! Vamos pegar algumas bolas pequenas e de diferentes tamanhos e na posição sentada deixe ${store.controllerKidName.text} pegar as bolas de colocar dentro de um pote. O movimento pode ser de guardar as bolas no pote ou ao contrario, tirar as bolas do pote.',
          ),textCTRST(stg1: '\u2055 Interaja com ${store.controllerKidName.text}, observe o seu comportamento.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV34TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Durante o banho de ${store.controllerKidName.text}, ensine as partes do corpo que você estiver banhando. “Agora vamos lavar a barriguinha”, “Agora vamos lavar os braços”, “É hora de lavar o pé”, assim por diante. Banho pode ser uma grande brincadeira.',
          ),textCTRST(stg1: '\u2055 Tenha cuidado com os objetos que você deixa perto de ${store.controllerKidName.text}. É uma fase de curiosidade e ${store.controllerKidName.text} sempre irá levar o objeto que pegar na mão à boca.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vá interagindo e vocalizando suas ações. Sempre que possível mantenha o contato visual “olho no olho” e sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar, responda como se estivessem conversando normalmente.',
          ),textCTRST(stg1: '\u2055 As brincadeiras ajudam na estimulação, mas fique atento (a) aos sinais que indicam que ${store.controllerKidName.text} deverá desacelerar, proporcione intervalos. São os sinais: irritabilidade, bocejo, soluços, agitação no movimento, desvio do olhar para outro lado.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Deixe ${store.controllerKidName.text} ',
            stg2: 'sentado (a)',
            stg3: ' em cima de uma almofada, ofereça a mão para ${store.controllerKidName.text} e deixe ${store.controllerKidName.text} executar o movimento para a posição em pé. Repete algumas vezes o movimento de sentar e levantar.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV34TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Deixe seus brinquedos favoritos numa distância de, pelo menos, um metro de ${store.controllerKidName.text} e incentive para que ${store.controllerKidName.text} os busque. Alcançando o brinquedo, estimule ${store.controllerKidName.text} para ',
              stg2: 'posição sentada',
              stg3: ' para brincar um pouco.'
          ),textCTRST(stg1: '\u2055 Apesar da evolução que você esta presenciando, ${store.controllerKidName.text} ainda depende muito de seus cuidadores. Esteja sempre perto, ofereça apoio e carinho sempre.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Estimule ${store.controllerKidName.text} com diferentes brincadeiras e chama a atenção com palavras, “Vem”, “Cadê ${store.controllerKidName.text}?”, “Vem com a mamãe”.',
          ),textCTRST(stg1: '\u2055 Evite ambientes agitados com excesso de estímulos, os locais devem favorecer para interação entre ${store.controllerKidName.text} e o ambiente, para possibilitar a observação dos diferentes objetos, pessoas e ruídos.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV34TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Faça cócegas! Desta forma, além de estimular as expressões e a linguagem (ao emitir sons) você irá criar um ambiente leve e saudável para uma conexão interativa e saudável entre você e ${store.controllerKidName.text}, o momento deve ser muito agradável para você também!',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} pode estar apresentando sinais de desobediência. Limites têm que ser dados, mas com firmeza e atitudes de amor.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Agora é ideal elogiar! Elogie o sorriso, os movimentos que ${store.controllerKidName.text} está aprendendo, tudo é importante para o desenvolvimento adequado. Você é muito importante neste processo do desenvolvimento!',
          ),textCTRST(stg1: '\u2055 Mantenha os horários diários das atividades de ${store.controllerKidName.text}, o ritmo de vida é importante para ${store.controllerKidName.text} permanecer calmo, seguro e com um bom desenvolvimento.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV34TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Deixe algum apoio perto de ${store.controllerKidName.text} e na posição ',
              stg2: 'barriguinha para baixo',
              stg3: ' estimule ${store.controllerKidName.text} arrastar/engatinhar no sentido do apoio e levantar. Se ${store.controllerKidName.text} não conseguir subir sozinho para a posição em pé, você pode ajudar, mas lembre-se, é importante reduzir as ajudas para concluir os movimentos, deixando independente.'
          ),textCTRST(stg1: '\u2055 Ensine às pessoas mais próximas sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou, até esse momento. Orgulhe-se de sua dedicação, mamãe/papai/avós/irmãos/cuidadores! '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ensine às pessoas mais próximas sobre a rotina e aprendizados que ${store.controllerKidName.text} conquistou até esse momento. Orgulhe-se de sua dedicação, mamãe/papai/avós/irmãos/cuidadores!',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Estimule ${store.controllerKidName.text} demostrar seus avanços ao papai e/ou aos familiares, parabenizando e valorizando seus esforços.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV34TASK5'),
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
