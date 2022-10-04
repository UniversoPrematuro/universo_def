import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa13Page extends StatefulWidget {
  final String title;
  const Tarefa13Page({Key? key, this.title = 'Tarefa13Page'}) : super(key: key);
  @override
  Tarefa13PageState createState() => Tarefa13PageState();
}

class Tarefa13PageState extends State<Tarefa13Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV13").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV13';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV13';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 13"),
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
                                "SIGA A 13ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .75,
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
                                              'images1/46 IMAGEM 03.png'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/46 IMAGEM 08.png',
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
                                                    'images1/ballon9.png')),
                                          ),
                                          child: regText(
                                              '\u25CF Movimento',
                                              'É momento de aprimorar os '
                                                  'movimentos de rolar e sentar, vamos organizar o espaço e o '
                                                  'ambiente para favorecer estas conquistas com segurança.'),
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
                                      MediaQuery.of(context).size.height * 1.31,
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
                                                      'images1/ballon91.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'Sempre utiliza os sons para o estímulo '
                                                    'do dia a dia.'),
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
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'Nunca estimule os movimentos '
                                                    'corporais após as mamadas, esperar em torno de 1:30 hora.'),
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
                                                      builder: ((context) => const TaskThirt())
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



class TaskThirt extends StatefulWidget {
  const TaskThirt({super.key});

  @override
  State<TaskThirt> createState() => _TaskThirtState();
}

class _TaskThirtState extends State<TaskThirt> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 13"),
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

                      textCTRST(
            stg1: '\u2055 Agora, vamos continuar a estimular o rolar!\n'
                'Coloque ${store.controllerKidName.text} na ',
            stg2: 'posição lateral (direita e depois esquerda) e estimule para'
                ' que ${store.controllerKidName.text} role até ficar de barriguinha para cima. ',
            stg3: 'Utilize um brinquedo que faça sons, irá facilitar para '
                'realização do movimento.',
          ),textCTRST(stg1: '\u2055 Lave as suas mãos antes e após a troca das '
              'fraldas. Mantenha ${store.controllerKidName.text} sempre seco e lembra a limpeza deve seguir'
              ' o movimento de frente para trás finalizando no bumbum, não '
              'repetir o movimento com o mesmo algodão e outros. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 O estímulo para o rolar deverá acontecer nos sentidos'
                ': posição lateral para barriguinha para baixo, depois '
                'barriguinha para baixo para lateral. No início parece um pouco'
                ' difícil mas ficará cada vez mais tranquilo para a execução do'
                ' movimento.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 O estímulo para o rolar de lateral para barriguinha '
                'para cima ocorre como uma tarefa mais fácil de execução quando'
                ' comparado da lateral para barriguinha para baixo.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Todas as brincadeiras e movimentos executados devem '
                'ser comemorados com palavras de incentivo, cantigas e muita '
                'festa. Cada conquista do desenvolvimento é para ser comemorado.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV13TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar! Sente ${store.controllerKidName.text}, sempre com apoio e tire as'
                ' costas do apoio, trazendo o corpo um pouco para frente '
                '(pequeno deslocamento) e retornar em seguida, como uma '
                'brincadeira conhecida como ',
            stg2: 'Serra-serra.'
          ),textCTRST(stg1: '\u2055 Tome cuidado com os banhos de sol. A pele '
              'de ${store.controllerKidName.text} é sensível e necessita de estar sempre amparado. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Converse muito com ${store.controllerKidName.text} e estimule ${store.controllerKidName.text} a sorrir e '
                'imitar os seus sons.'
          ),textCTRST(stg1: '\u2055 Respeite todos os horários da mamada e não '
              'ofereça nada de diferente sem o consentimento do profissional de'
              ' saúde que acompanha ${store.controllerKidName.text} regularmente. '),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Na posição de barriguinha para baixo, estimule ${store.controllerKidName.text}'
                  ' o levantar da cabeça e peito da superfície com apoio do '
                  'próprio braço.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV13TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Nessa idade, ${store.controllerKidName.text} já consegue levantar as perninhas '
                'quando estiver de ',
            stg2: 'barriguinha pra cima',
            stg3: '. Estimule esse movimento acariciando os pezinhos de ${store.controllerKidName.text} e '
                'ajudando a visualizar e pegar o próprio pezinho.',
          ),textCTRST(stg1: '\u2055 No caso de cólicas, situação comum na '
              'maioria dos bebês. Então para ajudar é só fazer movimentos '
              'circulares na região da barriguinha, sentido do peito para as '
              'pernas, pode também dobrar as perninhas e segurar por um tempo '
              'breve. Mantenha sempre as mãos e os pés quentinhos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ofereça os brinquedos utilizando sons, cores para '
                'estimular o movimento voluntário de ${store.controllerKidName.text}. Momento de '
                'estabelecer a própria busca e interação com o meio.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Deixar alguns brinquedos próximos de ${store.controllerKidName.text} mas fora do'
                ' próprio alcance e estimule para o alcance, após as tentativas'
                ' de busca do brinquedo, colocá-lo mais próximo e deixa pegá-lo.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV13TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Deixar ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo ',
            stg3: 'com alguns brinquedos, próprios para a idade, nas laterais '
                'dele (a) e ao alcance dos olhos do (a) ${store.controllerKidName.text}. Incentive ${store.controllerKidName.text} a '
                'alcançar os brinquedos e pegá-los.',
          ),textCTRST(stg1: '\u2055 Não compre ou ofereça brinquedos que não são'
              ' adequados para a idade de ${store.controllerKidName.text}. Pode gerar riscos. '),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Oferece brincadeira para estimular ${store.controllerKidName.text} a emitir sons'
                ' agudos (Gritos).',
          ),textCTRST(stg1: '\u2055 Manter a carteirinha de vacinação sempre em'
              ' dia, projeta ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Na posição sentada estimule ${store.controllerKidName.text} com barulhos que '
                'surgem da lateral para que ${store.controllerKidName.text} busque descobrir girando a sua'
                ' própria cabeça.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos treinar o movimento, segure nas mãozinhas de '
                '${store.controllerKidName.text} e deixe experimentar a posição sentada sem apoio da '
                'lateral, somente as suas mãos irá apoia-lo(a). Vamos nos '
                'divertir e cantar uma música de sua preferência. Essa tarefa '
                'deverá ser executada em período curto, mas aumentando '
                'gradativamente conforme a conquista e independência para o '
                'movimento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV13TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Manter o ritmo da rotina diária é importante para o '
                'desenvolvimento. Momento de estímulos e brincadeiras e '
                'momentos de silêncio, tranquilidade e soninho devem ser '
                'preconizados.',
          ),textCTRST(stg1: '\u2055 No caso de animais de estimação no ambiente '
              'de ${store.controllerKidName.text}, mantenha os cuidados de higiene do ambiente, não deixe '
              '${store.controllerKidName.text} em locais de acesso do animal, cuidado com pelos, urina e '
              'fezes dos animais e o contato com ${store.controllerKidName.text}. Não é devido o animal '
              'lamber o rosto e mãos de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Colocar brinquedos na frente e lateral para o alcance'
                ' imediato de ${store.controllerKidName.text} e também brinquedos com uma distância para '
                'visualização, deixa ${store.controllerKidName.text} de barriguinha para baixo e observa '
                'sua reação, depois barriguinha para cima e observa. Momento de'
                ' explorar os brinquedos, perceber as cores, cheiros, sons, '
                'texturas e vivenciar as conquistas dos movimentos e preparar '
                'para os próximos ganhos do desenvolvimento.',
          ),textCTRST(stg1: '\u2055 Os animais domésticos devem estar com a '
              'vacinação em dia para garantir a saúde de todos.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV13TASK5'),

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
