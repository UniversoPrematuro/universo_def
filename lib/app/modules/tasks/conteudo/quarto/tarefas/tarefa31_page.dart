import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa31Page extends StatefulWidget {
  final String title;
  const Tarefa31Page({Key? key, this.title = 'Tarefa31Page'}) : super(key: key);
  @override
  Tarefa31PageState createState() => Tarefa31PageState();
}

class Tarefa31PageState extends State<Tarefa31Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV31").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV31';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV31';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 31"),
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
                                "SIGA A 31ª TAREFA EM CASA",
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
                                              'images1/fig1012-6.jpeg'),
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
                                      child: regText('\u25CF Movimento',
                                          'Incentive para que sua criança pegue brinquedos de diferentes tamanhos, cores e pesos. Esse estímulo é muito importante para o desenvolvimento da destreza manual, fundamental para qualquer criança. Estimule a pegar brinquedos menores para executar o movimento com os dois dedos, fazendo a pegada e sustentação do objeto'),
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
                                      child: regText('\u25CF Linguagem',
                                          'É importante você sempre passar confiança, afeto e incentivo na sua fala com ${store.controllerKidName.text}. Isso fará a diferença no desenvolvimento da criança. '),
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
                                              'que podem cair na criança. Lembre-se, com o desenvolvimento a '
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
                                                      builder: ((context) => const TaskThirteenO())
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
class TaskThirteenO extends StatefulWidget {
  const TaskThirteenO({super.key});

  @override
  State<TaskThirteenO> createState() => _TaskThirteenOState();
}

class _TaskThirteenOState extends State<TaskThirteenO> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 31"),
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
              stg1: '\u2055 Coloque ${store.controllerKidName.text} para engatinhar em cima de diferentes texturas, de maneira segura. Em cima de cobertores, toalhas, tapetes, ',
            stg2: 'E.V.A',
            stg3: ', tudo vale para deixar ${store.controllerKidName.text} com melhor equilíbrio e agilidade no movimento.'
          ),textCTRST(stg1: '\u2055 Tome cuidado com o tipo de música que você expõe ${store.controllerKidName.text}. Dê preferências para músicas próprias para a idade infantil.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Durante essas descobertas, narre e converse sobre essas diferentes texturas, divirtam-se, afinal tudo é novo para ${store.controllerKidName.text}. Faça isso, sempre que possível! Converse com ${store.controllerKidName.text} as coisas boas do dia, aproveita para você relaxar.',
          ),textCTRST(stg1: '\u2055 Cante com ${store.controllerKidName.text} olhando nos olhos, para que se interesse em reproduzir o som.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Toda semana procure trocar os brinquedos/objetos, como exemplo, se ${store.controllerKidName.text} brincar com seis objetos, você poderá trocar três ou dois, então fará um rodízio dos brinquedos, tornando aquele movimento gostoso e de distração.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Conte uma história para ${store.controllerKidName.text}! A história se passa em uma fazenda e os personagens principais são os bichinhos que vivem nela, como vaca, boi, cachorro, gatinho, porquinho.',
          ),textCTRST(stg1: '\u2055 A criança nessa idade quer explorar e é muito curiosa. Tenha cuidado com objetos perigosos próximos a ele(a), assim panelas no fogão, baldes com água, janelas sem proteção, degraus e escadarias. Também evite deixar ${store.controllerKidName.text} explorar estantes ou mesas que possam balançar e que um objeto possa cair na criança. Evita acidentes, proteja sua criança!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A cada vez que falar de um animalzinho, ensine ${store.controllerKidName.text} o barulho que o bichinho faz, direcionando-se face a face com ${store.controllerKidName.text}, para que observe o som sendo articulado em sua boca. Faça os ruídos dos animais e se possível mostre a figura e/ou mesmo um desenho produzido.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Cante uma canção para ${store.controllerKidName.text}! Busque uma música infantil que agrade ${store.controllerKidName.text} e cante para ele(a). Tente ensinar pequenas silabas das palavras que aparecem na música.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} começa a aprender o significado da palavra NÃO. Use-a quando necessário.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Canções infantis são ótimas para a familiarização de frases e palavras, facilitando a aquisição de linguagem e compreensão das crianças. Qualquer tentativa de vocalização de ${store.controllerKidName.text} deve ser estimulada.',
          ),textCTRST(stg1: '\u2055 Vista ${store.controllerKidName.text} de acordo com a temperatura ambiente. Não sobrecarregue de roupas se estiver muito calor e tome cuidado ao deixar ${store.controllerKidName.text} no chão frio.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Um movimento para combinar, deixe um brinquedo ou objeto que ${store.controllerKidName.text} goste em cima do sofá, mostre e estimule ${store.controllerKidName.text} para pega-lo, pode ajudar segurando na mão de ${store.controllerKidName.text}.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Depois, quando estiver de ',
            stg2: 'pé com apoio (sofá, cadeira)',
            stg3: ' pegue a mão de ${store.controllerKidName.text} e estimule a sentar no chão (pode deixar o brinquedo cair no chão para ficar mais divertido e interessante), vamos treinar o levantar e o agachamento.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos construir uma torre. Com ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ', dê blocos para que ${store.controllerKidName.text} consiga construir uma torre. Incentive a construção de uma torre alta, oferecendo auxílio para ${store.controllerKidName.text} e quando precisar ficar em pé para colocar os blocos que ficam no alto, você poderá ajudar com o apoio das mãos.A brincadeira também pode acontecer com ${store.controllerKidName.text} em pé de frente ao sofá ou cadeira.'
          ),textCTRST(stg1: '\u2055 É comum bebês se incomodarem e chorarem por motivo de algum barulho estranho. Neste caso, é importante você mostrar a origem do barulho e explicar que ele (a) está a salvo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Encoraje ${store.controllerKidName.text} a realizar os movimentos com os cubos e vá conversando sobre as cores, formas e parabenize qualquer tentativa de ${store.controllerKidName.text}. Faça isso, sempre!',
              stg2: '\nOBS: ',
              stg3: 'Os blocos podem ser construídos com madeira, cubos de 2x2cm ou 3x3cmou de diferentes tamanhos e se quiser pintar*deixando tudo colorido e muito mais interessante.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Os movimentos deverão ser associados, pois são processos de evolução do desenvolvimento. Com ${store.controllerKidName.text} deitado de barriguinha para cima estimule para sentar, se estiver de barriguinha para baixo, estimule virar de barriguinha para cima ou mesmo de barriguinha para baixo com apoio nas mãos levantar para a posição de pé. Não é hora de andar, mas é hora de estimular a ficar na posição em pé.',
          ),textCTRST(stg1: '\u2055 Lembre-se: cada criança tem seu próprio ritmo para se desenvolver. Caso esteja com dúvidas, entre em contato conosco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: 'sentado(a) no colo',
              stg3: ', de frente para você, ensine a cantar parabéns, batendo as palminhas e levantando os braços.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar, interaja com ${store.controllerKidName.text} conversando de forma tranquila e calma para que observe as suas expressões, gestos e palavras. Determine esse tempo de exercício para também conversar com ${store.controllerKidName.text} e observar suas reações.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV31TASK5'),

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
