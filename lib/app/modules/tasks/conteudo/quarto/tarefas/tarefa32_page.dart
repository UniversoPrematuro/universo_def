import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa32Page extends StatefulWidget {
  final String title;
  const Tarefa32Page({Key? key, this.title = 'Tarefa32Page'}) : super(key: key);
  @override
  Tarefa32PageState createState() => Tarefa32PageState();
}

class Tarefa32PageState extends State<Tarefa32Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV32").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV32';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV32';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 32"),
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
                                "SIGA A 32ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .95,
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
                                          height: 260.0,
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
                                            'images1/fig1012-5.jpeg',
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/fig1012-3.jpeg'),
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
                                          'A criança deve ser estimulada na posição barriguinha para baixo, pois essa posição neste momento possibilita maior movimentação, equilíbrio e treinamento para alcançar outros movimentos mais elaborados no tempo certo. Então, já estamos trabalhando os estímulos com os movimentos associados. Siga todas as tarefas!'),
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
                                      MediaQuery.of(context).size.height * 1.35,
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
                                          'Canções infantis são ótimas para o desenvolvimento. O ritmo e a rima tornam a memorização e a pronúncia de palavras ainda mais fáceis. Além disso, o processo pelo qual a criança vai entendendo a música e que também é capaz de produzi-la, é uma importante ferramenta para seu desenvolvimento cerebral.'),
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
                                          'Atenção com os objetos muito pequenos, proteja ${store.controllerKidName.text}, não ofereça objetos que geram riscos. As crianças colocam tudo na boca, objetos que podem soltar peças também são de risco. Não deixa bebe em locais altos que não ofereça segurança. Transporta sempre bebe na cadeirinha de segurança no carro, devidamente colocada. Proteja!'),
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
                                                      builder: ((context) => const TaskThirteenTw())
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
class TaskThirteenTw extends StatefulWidget {
  const TaskThirteenTw({super.key});

  @override
  State<TaskThirteenTw> createState() => _TaskThirteenTwState();
}

class _TaskThirteenTwState extends State<TaskThirteenTw> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 32"),
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
                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos nos divertir com a brincadeira! Com ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ', faça você, primeiramente, a brincadeira o de se esconder atrás de um paninho estimulando ${store.controllerKidName.text} a puxar para te encontrar. Depois ensine ${store.controllerKidName.text} a fazer a mesma brincadeira, do mesmo modo que você ensinou e neste momento você irá puxar o pano, expressando surpresa.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está se tornando cada dia mais independente, hoje ele é menos frágil que ontem. Lembre-se de respeitar sua evolução.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Qualquer tentativa é válida, é começando que irá aprimorar. Faça muito elogios expressando sorriso e demonstrando alegria por ${store.controllerKidName.text} cumprir a tarefa ou mesmo pela tentativa e esforço.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Para todas as tarefas é importante a repetição. Você deverá escolher uma tarefa anterior, do bloco 1 ou 2 e repetir. Observe como ${store.controllerKidName.text} executará, observe o desenvolvimento alcançado!',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV32TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Aumentando a velocidade do movimento! Vamos brincar de engatinhar e aumentar a velocidade do deslocamento, ofereça o estímulo batendo as mãos e falando “vamos, vamos”. Ofereça um brinquedo, aproximando da linha de chegada ${store.controllerKidName.text} deverá sentar e explorar o brinquedo. Levanta e muda de lugar para repetir a brincadeira. Se ${store.controllerKidName.text} executar o movimento arrastando, também é valido.',
          ),textCTRST(stg1: '\u2055 Ao oferecer água para ${store.controllerKidName.text}, certifique-se de estar utilizando a maneira mais segura, como o copinho especial. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É momento de conversar com ${store.controllerKidName.text}! Faça barulhos com a boca e incentive ${store.controllerKidName.text} a repetir (“aaaa”, “angu”, “oi”). Faça os barulhos com movimentos bem marcados da boca, sempre ensine ${store.controllerKidName.text} como fazer os movimentos da boca para que ele(a) o imite.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Faça sempre primeiro e deixe-o(a) observar você fixamente. Após qualquer emissão de som de ${store.controllerKidName.text} festeje sua tentativa! Faça esse exercício sempre que possível.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV32TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ' e com o brinquedo favorito dele(a), brinque de passar o brinquedo de uma mão para outra. Essa tarefa irá exercitar a lateralidade. A cada momento de três repetições troca o brinquedo e formato.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} já deve ter elegido uma fralda de pano ou um brinquedo favorito, como objeto de estimação. Certifique-se de sempre levar esse objeto quando ${store.controllerKidName.text} estiver em outro lugar que não seja na sua casa, perto de você'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É importante ensinar bebê a compartilhar também. Em alguns momentos da brincadeira, peça o brinquedo e faça elogios à ${store.controllerKidName.text} quando o brinquedo lhe for entregue.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV32TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ', dê dois brinquedos a ele(a) e ensine a batê-los um no outro. Isso irá estimular a força nas mãos. Durante a atividade deve oferecer diferentes brinquedos ou objetos.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} começa a mostrar seu comportamento. Portanto, é comum ele (a) rir para algumas pessoas e se esconder para outras. Incentive a socialização.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Fale com alegria e dê uma gargalhada, para que perceba ser algo importante e divertido está acontecendo. Prenda a atenção de ${store.controllerKidName.text} para a brincadeira, sempre sorrindo, alternando tons de voz.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV32TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos deixar ${store.controllerKidName.text} com movimentos livres! Explorar todas as posições corporais e deixar ele brincar com seus pezinhos e mãozinhas e com os brinquedos que estiverem ao seu arredor. À distância, você verifica como ${store.controllerKidName.text} irá se comportar nesta situação. Momentos de interação do ${store.controllerKidName.text} sozinho é importante para a sua formação.',
          ),textCTRST(stg1: '\u2055 Mesmo que a memória de ${store.controllerKidName.text} ainda seja curta, imponha limites e diga não para situação de risco a ${store.controllerKidName.text}.Aos poucos, ele (a) irá aprendendo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Após um tempo sozinho, em torno de vinte minutos, você aproxima e aproveite para brincar e cantar para o ${store.controllerKidName.text}.  Use a imaginação e criatividade. ${store.controllerKidName.text} perceberá que alguns momentos sozinhos se passaram e logo chegou a pessoa querida. Depois ${store.controllerKidName.text} tolera períodos um pouco maior.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV32TASK5'),
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
