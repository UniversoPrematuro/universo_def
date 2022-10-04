import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa14Page extends StatefulWidget {
  final String title;
  const Tarefa14Page({Key? key, this.title = 'Tarefa14Page'}) : super(key: key);
  @override
  Tarefa14PageState createState() => Tarefa14PageState();
}

class Tarefa14PageState extends State<Tarefa14Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV14").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV14';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV14';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 14"),
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
                                "SIGA A 14ª TAREFA EM CASA",
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
                                          //height: 210.0,
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
                                              'images1/46 IMAGEM 07.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/46 IMAGEM 01.png',
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
                                                    'images1/ballon91.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'Todos os movimentos que favorece '
                                                  'o controle do pescoço e cabeça sem apoio são importantes para '
                                                  '${store.controllerKidName.text}. O rolar e sentar com apoio devem ser estimulados para o '
                                                  'ganho do movimento.'),
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
                                      MediaQuery.of(context).size.height * 1.4,
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
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'Aumente a percepção para os sons ao seu'
                                                    ' arredor e do próprio ambiente. É importante associar o ruído do'
                                                    ' local e o nome para iniciar o reconhecimento.'),
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
                                                      'images1/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'Os brinquedos devem ser lavados e '
                                                    'higienizados para garantir a saúde de ${store.controllerKidName.text}.'),
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
                                                      builder: ((context) => const TaskFourt())
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
class TaskFourt extends StatefulWidget {
  const TaskFourt({super.key});

  @override
  State<TaskFourt> createState() => _TaskFourtState();
}

class _TaskFourtState extends State<TaskFourt> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 14"),
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
                      speechPerson(),
                      const SizedBox(
                        height: 40.0,
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Estimule ${store.controllerKidName.text} a bater palminha, coloque ${store.controllerKidName.text} na '
                'posição sentada com apoio e de frente para você canta uma '
                'música, uma sugestão é a música dos parabéns.',
          ),textCTRST(stg1: '\u2055 Um relacionamento estável e seguro, com '
              'carinho e amor, é a melhor forma de desenvolver uma criança na '
              'infância. Sempre demonstre carinho para bebê. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ainda na posição sentada ofereça um brinquedo para '
                '${store.controllerKidName.text} alcançar, de imediato coloque o brinquedo no campo visual'
                ' de ${store.controllerKidName.text}, mas com uma distância, estimule o deslocamento do'
                ' tronco para a busca do brinquedo. Fique atenta para as quedas '
                'na lateral.',
          ),textCTRST(stg1: '\u2055 As crianças podem desenvolver alergias, o '
              'que mais estimula são cortinas, tapetes, cobertores, brinquedos '
              'de pelúcia, mofo de parece e umidade. Vamos manter o local bem '
              'ventilado!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Manter na posição sentada e oferecer o brinquedo ou '
                'algum estímulo na lateral para que ${store.controllerKidName.text} execute o girar da '
                'cabeça com um deslocamento suave do tronco. Estimule do lado '
                'direito e esquerdo para manter a resposta do movimento para os'
                ' dois lados.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 É momento de conversar com ${store.controllerKidName.text}! Faça barulhos com a '
                'boca e incentive ${store.controllerKidName.text} a repetir (“aaaa”, “angu”, “oi”). Faça '
                'os barulhos com movimentos bem marcados da boca, sempre ensine'
                ' bebê como fazer os movimentos da boca para que ${store.controllerKidName.text} o imite.',
          ),textCTRST(stg1: '\u2055 Seu trabalho é apresentar bebê ao mundo e o'
              ' mundo a ele(a). Você será sua companhia e guia, por isso é '
              'importante dar à ${store.controllerKidName.text} a confiança necessária para testar sua '
              'curiosidade e, ao mesmo, assegurar sua proteção.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Uma música calma no ambiente ajuda nos intervalos dos'
                ' estímulos direcionados (tarefas) e proporciona tranquilidade '
                'para ${store.controllerKidName.text} se movimentar livremente sem ajuda. Explorar o '
                'ambiente de forma independente colabora para o ganho do '
                'desenvolvimento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Incentive ${store.controllerKidName.text} ao movimento do sentar! De ',
            stg2: 'barriguinha para cima',
            stg3: ', ofereça seus dedos para ${store.controllerKidName.text} segurar com as mãos e dê o '
                'apoio para que ele (a) levante o tronco da superfície, '
                'utilizando os músculos do tronco para ganhar força e preparar '
                'para novos ganhos motores.',
          ),textCTRST(stg1: '\u2055 Vamos cuidar da saúde bucal de ${store.controllerKidName.text}, é '
              'importante manter a limpeza da gengiva e boquinha. Não deixe '
              'para depois, vamos fazer este cuidado como uma rotina diária.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Agora é a hora de brincar de barriguinha para baixo, '
                'colocar brinquedos ao redor de ${store.controllerKidName.text}, alguns próximos e outro'
                ' de interesse um pouco mais distantes, deixe livremente a '
                'busca dos objetos. Mantenha uma observação a distância, '
                'somente para manter o cuidado e proteção contra riscos.'
          ),textCTRST(stg1: '\u2055 Mantenha rigorosamente a limpeza dos '
              'objetos que ${store.controllerKidName.text} coloca na boca.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Converse com ${store.controllerKidName.text}, mas evite falar infantilizando,'
                  ' fale com sua tonalidade normal.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} deitado ',
            stg2: 'de barriga para cima',
            stg3: ' você poderá movimentar o brinquedo de um lado para '
                'outro, ${store.controllerKidName.text} deverá ser estimulado/a girar a cabeça do centro '
                'para a lateral, fazendo com que eventualmente ${store.controllerKidName.text} role para a'
                ' posição lateral.',
          ),textCTRST(stg1: '\u2055 Se atente a caderneta de vacinação. As '
              'vacinas de bebê estão em dia?'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Apoiar em baixo dos bracinhos de ${store.controllerKidName.text} e de frente para'
                ' você, deixa acontecer o apoio dos pezinhos na superfície, mas'
                ' não deixa ficar e permanecer todo o peso corporal, brinca de'
                ' pula, pula sempre com o apoio.'
          ),textCTRST(stg1: '\u2055 Não deixa ${store.controllerKidName.text} sem supervisão de um adulto,'
              ' pode observar mesmo em curtas distâncias.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante os movimentos você deverá conversar com '
                  '${store.controllerKidName.text} para incentiva a execução e repetição do movimento.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos deixar ${store.controllerKidName.text} com movimentos livres! Explorar '
                'todas as posições corporais e deixar ele brincar com seus '
                'pezinhos e mãozinhas. Em alguns momentos deixar ${store.controllerKidName.text} na '
                'posição de barriguinha para baixo, depois barriguinha para cima.',
          ),textCTRST(stg1: '\u2055 Nunca dê medicamentos a bebê sem a '
              'recomendação de um médico. É importante que sempre seguir as '
              'recomendações dadas pelo(a) pediatra. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Para o momento de tranquilidade você poderá deitar de'
                ' lateral e colocar ${store.controllerKidName.text} também de lateral virado para você, '
                'face a face. É hora de conversar baixinho, cantar, fazer '
                'caretinha (expressões faciais) e quem sabe pegar no soninho.'
          ),textCTRST(stg1: '\u2055 Verifique sempre a temperatura do ambiente '
              'para escolher a roupa ideal para aquele período. As mãozinhas e'
              ' pezinhos deverão sempre estar quentinhos.'),
          const SizedBox(height: 10.0,),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante esses momentos aproveite para brincar e '
                  'cantar para o bebê.  Use a imaginação e criatividade. '
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV14TASK5'),

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
