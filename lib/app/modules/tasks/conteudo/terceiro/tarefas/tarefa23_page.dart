import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa23Page extends StatefulWidget {
  final String title;
  const Tarefa23Page({Key? key, this.title = 'Tarefa23Page'}) : super(key: key);
  @override
  Tarefa23PageState createState() => Tarefa23PageState();
}

class Tarefa23PageState extends State<Tarefa23Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV23").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV23';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV23';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 23"),
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
                                "SIGA A 23ª TAREFA EM CASA",
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
                                              'images1/46 IMAGEM 01.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-13.jpeg',
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
                                          'A criança deve ser estimulada na '
                                              'posição barriguinha para baixo, pois essa posição neste momento '
                                              'possibilita maior movimentação, equilíbrio e treinamento para '
                                              'alcançar outros movimentos mais elaborados no tempo certo. Então'
                                              ', já estamos trabalhando os estímulos com os movimentos '
                                              'associados. Siga todas as tarefas!'),
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
                                          '\u25CF Som',
                                          'Canções infantis são ótimas para o '
                                              'desenvolvimento. O ritmo e a rima tornam a memorização e a '
                                              'pronúncia de palavras ainda mais fáceis. Além disso, o processo '
                                              'pelo qual a criança vai entendendo a música e que também é capaz '
                                              'de produzi-la, é uma importante ferramenta para seu '
                                              'desenvolvimento cerebral.'),
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
                                          'Atenção com os objetos muito '
                                              'pequenos, proteja ${store.controllerKidName.text}, não ofereça objetos que geram riscos. As'
                                              ' crianças colocam tudo na boca, objetos que podem soltar peças '
                                              'também são de risco. Não deixe ${store.controllerKidName.text} em locais altos que não '
                                              'ofereça segurança. Transporta sempre ${store.controllerKidName.text} na cadeirinha de '
                                              'segurança no carro, devidamente colocada. Proteja!'),
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
                                                      builder: ((context) => const TaskTwentThree())
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
class TaskTwentThree extends StatefulWidget {
  const TaskTwentThree({super.key});

  @override
  State<TaskTwentThree> createState() => _TaskTwentThreeState();
}

class _TaskTwentThreeState extends State<TaskTwentThree> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 23"),
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
                          )
                        ],
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos nos divertir com a brincadeira! Com ${store.controllerKidName.text} na ',
              stg2: "posição sentado (a)",
              stg3: ", faça você, primeiramente, a brincadeira o de se esconder "
                  "atrás de um paninho estimulando ${store.controllerKidName.text} a puxar para te encontrar"
                  ". Depois ensine ${store.controllerKidName.text} a fazer a mesma brincadeira, do mesmo modo"
                  " que você ensinou e neste momento você irá puxar o pano,"
                  " expressando surpresa."
          ),textCTRST(stg1: '\u2055 Fique atenta! Não falte das consultas de rotina de ${store.controllerKidName.text}, siga todas as orientações para o bom desenvolvimento e crescimento, observe as indicações de cuidados do ambiente, higiene, limpeza da boca e dentinhos que irão surgindo. Acompanhe as informações também na carteirinha da criança.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Qualquer tentativa é válida, é começando que irá aprimorar. '
                  'Faça muito elogios expressando sorriso e demonstrando alegria '
                  'por ${store.controllerKidName.text} cumprir a tarefa ou mesmo pela tentativa e esforço.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Para todas as tarefas é importante a repetição. Você'
                  ' deverá escolher uma tarefa anterior, do bloco 1 ou 2 e repetir.'
                  ' Observe como ${store.controllerKidName.text} executará, observe o desenvolvimento alcançado! '
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Aumentando a velocidade do movimento! Vamos brincar'
                  ' de engatinhar e aumentar a velocidade do deslocamento, ofereça'
                  ' o estímulo batendo as mãos e falando “vamos, vamos” ofereça'
                  ' um brinquedo, aproximando da linha de chegada ${store.controllerKidName.text} deverá sentar'
                  ' e explorar o brinquedo. Levanta e muda de lugar para repetir'
                  ' a brincadeira. Se ${store.controllerKidName.text} executar o movimento arrastando,'
                  ' também é valido.'
          ),textCTRST(stg1: '\u2055 Observe a reação de ${store.controllerKidName.text} com os barulhos dos brinquedos e da própria casa. ${store.controllerKidName.text} deve reagir com os barulhos de bater a porta, vozes dos familiares e brinquedos que emitem som, alguma reação deve ser apresentada por ${store.controllerKidName.text} com os ruídos, mesmo que ${store.controllerKidName.text} esteja virado (a) para outro lado.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 É momento de conversar com ${store.controllerKidName.text}! Faça barulhos com a'
                  ' boca e incentive ${store.controllerKidName.text} a repetir (“aaaa”, “angu”, “oi”). Faça'
                  ' os barulhos com movimentos bem marcados da boca, sempre ensine'
                  ' ${store.controllerKidName.text} como fazer os movimentos da boca para que ele (a) o imite.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Faça sempre primeiro e deixe-o observar você fixamente.'
                  ' Após qualquer emissão de som de ${store.controllerKidName.text} festeje sua tentativa!'
                  ' Faça esse exercício sempre que possível.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} na ',
              stg2: "yposição sentado (a)",
              stg3: " e com o brinquedo favorito dele (a), brinque de passar o "
                  "brinquedo de uma mão para outra. Essa tarefa irá exercitar a"
                  " lateralidade. A cada momento de três repetição troca o brinquedo"
                  " e formato."
          ),textCTRST(stg1: '\u2055 Evite o uso de aparelhos eletrônicos para distrair ${store.controllerKidName.text}. Prefira brinquedos do que jogos virtuais. É recomendado que o contato com equipamentos digitais ocorra após dois anos de idade garantindo o melhor desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 É importante ensinar ${store.controllerKidName.text} a compartilhar também. Em'
                  ' alguns momentos da brincadeira, peça o brinquedo e faça elogios'
                  ' à ${store.controllerKidName.text} quando o brinquedo lhe for entregue.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} na ',
              stg2: "posição sentado (a)",
              stg3: ", dê dois brinquedos a ele (a) e ensine a batê-los um no outro."
                  " Isso irá estimular a força nas mãos. Durante a atividade deve"
                  " oferecer diferentes brinquedos ou objetos."
          ),textCTRST(stg1: '\u2055 É importante para ${store.controllerKidName.text} o vinculo com pessoas queridas da família, assim poderá construir uma base sólida entre as relações sociais. Vamos estimular as relações com alegria, tranquilidade, sorrisos, carinho e brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Fale com alegria e dê uma gargalhada, para que perceba'
                  ' ser algo importante e divertido está acontecendo. Prenda a '
                  'atenção de ${store.controllerKidName.text} para a brincadeira, sempre sorrindo, '
                  'alternando tons de voz.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos deixar ${store.controllerKidName.text} com movimentos livres! Explorar todas '
                  'as posições corporais e deixar ele brincar com seus pezinhos e '
                  'mãozinhas e com os brinquedos que estiverem ao seu arredor. A '
                  'distância você verifica como ${store.controllerKidName.text} irá se comportar nesta situação.'
                  ' Momentos de interação do ${store.controllerKidName.text} sozinho é importante para a sua formação.'
          ),textCTRST(stg1: '\u2055 Observe as reações de ${store.controllerKidName.text} na parte visual. ${store.controllerKidName.text} deverá responder com o olhar direcionado ao brinquedo e nas pessoas, a fixação do olhar deverá acontecer com os objetos de interesse mantendo uma distância entre o objeto e o rosto.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Após um tempo sozinho, em torno de vinte minutos, você '
                  'aproxima e aproveite para brincar e cantar para o ${store.controllerKidName.text}.  Use a '
                  'imaginação e criatividade. ${store.controllerKidName.text} perceberá que alguns momentos '
                  'sozinhos se passaram e logo chegou a pessoa querida. Depois ${store.controllerKidName.text}'
                  ' tolera períodos um pouco maior.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV23TASK5'),
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
