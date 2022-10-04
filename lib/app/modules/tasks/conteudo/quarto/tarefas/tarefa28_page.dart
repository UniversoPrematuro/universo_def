import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa28Page extends StatefulWidget {
  final String title;
  const Tarefa28Page({Key? key, this.title = 'Tarefa28Page'}) : super(key: key);
  @override
  Tarefa28PageState createState() => Tarefa28PageState();
}

class Tarefa28PageState extends State<Tarefa28Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV28").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV28';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV28';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 28"),
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
                                "SIGA A 28ª TAREFA EM CASA",
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
                                          viewportFraction: 0.78,
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
                                              'images1/fig1012-8.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig1012-10.jpeg',
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
                                      child: regText(
                                          '\u25CF Movimento',
                                          'A criança está adquirindo habilidades'
                                              ' fundamentais. Nessa fase, incentive o sentar sem apoio e o arrastar'
                                              ' no chão. O desenvolvimento de ${store.controllerKidName.text} está ocorrendo aos poucos e novas'
                                              ' conquistas de habilidades vão aparecer nesta nova etapa. Vamos '
                                              'continuar com as tarefas!'),
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
                                      MediaQuery.of(context).size.height * 1.32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("LINGUAGEM",
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
                                      child: regText(
                                          '\u25CF Linguagem',
                                          'O estímulo a linguagem é muito '
                                              'importante e ${store.controllerKidName.text} vai aprender mais se o ambiente possuir relação'
                                              ' saudável. Estimule, converse, beije, aninhe, brinca, convive com'
                                              ' os familiares e amigos, são exemplos de como construir uma forte'
                                              ' relação e saudável.'),
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
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          'Retire os enfeites, móveis leves '
                                              'que podem cair na criança.Lembre-se, com o desenvolvimento a '
                                              'criança explora melhor o ambiente. É incrível! Ontem o movimento'
                                              ' não era executado e neste momento o movimento pode aparecer. '
                                              'Observamos que é o marco do primeiro aparecimento do novo movimento.'),
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
                                                      builder: ((context) => const TaskTwentEi())
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
class TaskTwentEi extends StatefulWidget {
  const TaskTwentEi({super.key});

  @override
  State<TaskTwentEi> createState() => _TaskTwentEiState();
}

class _TaskTwentEiState extends State<TaskTwentEi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 28"),
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
                height: MediaQuery.of(context).size.height * 7.7,
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
              stg1: '\u2055 A exploração do ambiente torna-se uma atividade dominante para ${store.controllerKidName.text}. O espaço de convivência está à espera de ${store.controllerKidName.text} para ser descoberto. Incentive ${store.controllerKidName.text} a explorar, em alguns momentos sozinho(a), o espaço da casae também com os seus brinquedos, para perceber todos os objetos do ambiente, não esqueça, sempre com supervisão e em um local seguro.',
          ),textCTRST(stg1: '\u2055 Comemore cada conquista de ${store.controllerKidName.text}. Estamos indo muito bem!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Deixe ${store.controllerKidName.text} um tempinho sozinho de barriguinha para baixo, coloque alguns brinquedos na frente e vamos observar o deslocamento de ${store.controllerKidName.text} para o alcance do objeto. Aos poucos a distância do brinquedo deve ser maior, para ${store.controllerKidName.text} percorrer o maior deslocamento.',
          ),textCTRST(stg1: '\u2055 Não se esqueça de estabelecer os cuidados necessários de higienização para segurança da família e, principalmente, de ${store.controllerKidName.text}.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV28TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular os movimentos voluntários com independência de ${store.controllerKidName.text}! Dê o brinquedo favorito e deixe a brincadeira acontecer espontaneamente, observe a reação de ${store.controllerKidName.text} com uma certa distância e registra os movimentos.',
          ),textCTRST(stg1: '\u2055 Quando estiver próximo à hora do sono, evite tornar o ambiente com muito estímulo, atividades ou distrações. Estimular o sono é importante para o desenvolvimento de ${store.controllerKidName.text}, mantenha o ambiente tranquilo, neste momento, com pouca luz no ambiente.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} responde quando o chama, faz imitação de gestos e caretas com a expressão do rosto. Fortaleça a memória de ${store.controllerKidName.text}, chamando pelo seu nome e inicie um diálogo com ${store.controllerKidName.text} nomeando também o brinquedo e objetos que estiver em seu alcance. É importante sempre falar os nomes dos objetos e mostra-los para bebê.',
          ),textCTRST(stg1: '\u2055 Retire os enfeites e os móveis leves que podem cair em ${store.controllerKidName.text}. Lembre-se, conforme o desenvolvimento vai aumentando a criança passa a explorar melhor o ambiente. É incrível! Ontem um determinado movimento não era executado e, neste momento, o movimento pode aparecer. Observamos que é o marco do primeiro aparecimento de um novo movimento. Comemore!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Crie brincadeiras que possibilita ${store.controllerKidName.text} a permanecer na posição em pé.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV28TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Brinquedos ou objetos que reproduzem barulho são fascinantes para crianças. Vamos aproveitar! Com ${store.controllerKidName.text} ',
            stg2: 'sentado (a)',
            stg3: ', provoca sua atenção com um barulho ao redor de ${store.controllerKidName.text}, assim poderá movimentar a cabeça e o corpo para olhar em direção ao som e descobrir qual o objeto está proporcionando o som, assim conseguiremos estimular ${store.controllerKidName.text} nos movimentos laterais.'
          ),textCTRST(stg1: '\u2055 Brinque com ${store.controllerKidName.text}! As brincadeiras servem para aprimorar o desenvolvimento infantil e serão fundamentais na fase adulta.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos aproveitar esse momento dando-lhe atenção para que sinta segurança e afeto. Fale com ${store.controllerKidName.text} sempre sorrindo brincando com expressões faciais de carinho. Momentos alegres e agradáveis colaboram para o melhor aprendizado e desenvolvimento.',
          ),textCTRST(stg1: '\u2055 As brincadeiras auxiliam o desenvolvimento social, emocional, físico e cognitivo (cerebral), portanto, nunca deixe de brincar com ${store.controllerKidName.text}.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV28TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 É hora de buscar o brinquedo no chão, de barriga para baixo ${store.controllerKidName.text} deverá ser estimulado para pegar ou recuperar o objeto (brinquedo, coisas representativas da casa), assim irá fazer o movimento de arrastar. No início, pode ajudar com o apoio de suas mãos no pezinho para impulsionar e logo estará executando o movimento sem a ajuda.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está desenvolvendo e crescendo, consegue comunicar com maior independência, mas é hora de redobrar a atenção. '
              '\n- Nunca deixe ${store.controllerKidName.text} totalmente sozinho(a) sem supervisão,'
      '\n- Não deixe ${store.controllerKidName.text} com pessoas desconhecidas, proteja contra os acidentes domésticos.'
    '\n- Verifique na casa o que poderia oferecer perigo, algum móvel, objetos pequenos e lembre-se: essa fase ${store.controllerKidName.text} pode segurar em superfície mais alta para se levantar, cuidado com toalhas de mesa em seu alcance.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de esconde/esconde. Para a brincadeira, vamos pegar o brinquedo que ${store.controllerKidName.text} gosta. Começou a brincadeira, esconde o brinquedo e depois mostra o brinquedo e fala, achou! Mas agora é hora de deixar ${store.controllerKidName.text} fazer um esforço e tentar pegar o brinquedo com o deslocamento do arrastar e/ou ',
            stg2: 'sentado (a)',
            stg3: ' deslocando o corpo com a inclinação para a frente ou para a lateral. Pega novamente o brinquedo e repete a brincadeira, é importante também o processo de repetição.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV28TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} começa a dialogar e se torna mais conversador. Fale como foi o seu dia para ${store.controllerKidName.text}, estimulando o diálogo, pega objetos e nomeia, canta música infantil.',
          ),textCTRST(stg1: '\u2055 Durante a alimentação de ${store.controllerKidName.text}, ofereça um ambiente confortável e tranquilo. As refeições devem ser associadas a momentos de união familiar e não traumáticos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Lembre-se sempre, estimule o olhar fixo, face a face, e deixe ${store.controllerKidName.text} ouvir sua voz, dando-lhe atenção, para que se sinta seguro em fazer parte do diálogo. Fale com ${store.controllerKidName.text} sempre sorrindo brincando com expressões faciais de carinho.',
          ),textCTRST(stg1: '\u2055 Banhos são divertidos, mas nunca deixe ${store.controllerKidName.text} sozinho, nem por um segundo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nesta etapa, teremos que estimular as brincadeiras de barriga para baixo de ${store.controllerKidName.text}, para conseguir o movimento arrastar e gatinhar. Quando o movimento estiver ainda difícil para a execução ${store.controllerKidName.text} ficará um pouco irritado, manifestando com chorinho, então é hora de ajudar para ${store.controllerKidName.text} conseguir completar o movimento. Vamos persistindo neste movimento de arrastar e engatinhar, é muito importante para alcançar as próximas etapas.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A brincadeira no chão com bolas pequenas de diferentes cores ajuda nesta conquista. Deixe ${store.controllerKidName.text} de barriga para baixo e você fica na frente mostrando os movimentos com as bolas, e se emitir sons aproveita para chamar à atenção. Vamos ver como ${store.controllerKidName.text} reage com essa brincadeira! ${store.controllerKidName.text} foi na direção da bola?',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV28TASK5'),


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
