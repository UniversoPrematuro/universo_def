import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';

class Tarefa30Page extends StatefulWidget {
  final String title;
  const Tarefa30Page({Key? key, this.title = 'Tarefa30Page'}) : super(key: key);
  @override
  Tarefa30PageState createState() => Tarefa30PageState();
}

class Tarefa30PageState extends State<Tarefa30Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV30").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV30';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV30';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 30"),
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
                                "SIGA A 30ª TAREFA EM CASA",
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
                                              'images1/fig1012-7.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig1012-4.jpeg',
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
                                          'A hora do estímulo deve ser divertida e agradável. Organize essa atividade para os momentos que a rotina dos afazeres estiver mais tranquila. Assim, você irá estimular ${store.controllerKidName.text} de maneira divertida, potencializando o aprendizado e demostrando maior segurança.'),
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
                                          'O sorriso, a gargalhada e o contato visual fazem parte da linguagem da criança. Estimule sempre aproveitando os momentos da rotina diária da casa.'),
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
                                          'Neste momento do desenvolvimento, os objetos menores podem ser alcançados e manuseados pela criança. Não deixe peças pequenas nos locais de fácil acesso (chão, berço)e, muito cuidado com remédios, principalmente quando acidentalmente caem no chão. Objetos pontiagudos também geram risco, os materiais de limpeza devem ser manuseados longe das crianças e armazenados em ambientes seguros.'),
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
                                                      builder: ((context) => const TaskThirteen())
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
class TaskThirteen extends StatefulWidget {
  const TaskThirteen({super.key});

  @override
  State<TaskThirteen> createState() => _TaskThirteenState();
}

class _TaskThirteenState extends State<TaskThirteen> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 30"),
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
              stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Fique em uma distância de 1 metro de ${store.controllerKidName.text}, deixe ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo',
            stg3: ',chame pelo seu nome e mostra um brinquedo. Faça diversos barulhos, com diferentes tons de voz e deixe ${store.controllerKidName.text} se esforçar para alcançar, arrastando ou engatinhando. O importante é o deslocamento nesta posição. Sempre comemore quando ${store.controllerKidName.text} conseguir responder ao estímulo.'
          ),textCTRST(stg1: '\u2055 Cuidado com tomadas e fios pela casa. Nessa idade, ${store.controllerKidName.text} gosta de explorar o ambiente, forneça sempre um ambiente seguro e estimulante para brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Mantenha um diálogo agradável e divertido durante as brincadeiras para construir uma conexão significativa entre vocês. Os momentos das brincadeiras devem ser momentos para você também relaxar e desligar dos afazeres diários.',
          ),textCTRST(stg1: '\u2055 Mantenha móveis, chão, objetos de acesso de ${store.controllerKidName.text} higienizados, pois é uma fase que ${store.controllerKidName.text} explora muito.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ' e provoca um deslocamento do seu tronco hora para a direita e depois de alguns minutinhos um deslocamento para a esquerda. O movimento parece que estará empurrando para o lado, de modo que ${store.controllerKidName.text} mantenha-se sentado(a), assim poderemos treinar o equilíbrio e o apoio na lateral com a mãozinha.\nImportante: observe a reação de ${store.controllerKidName.text} e o movimento deverá ser bem devagar, somente para provocar um deslocamento e uma reação de controle de equilíbrio do corpo.'
          ),textCTRST(stg1: '\u2055 Fique atenta (o) a caderneta de vacinação. É importante seguir as datas para garantir o desenvolvimento infantil adequadode ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nessa tarefa, faça sons de trenzinho, ensine ${store.controllerKidName.text} a fazer também. Nessa fase, ${store.controllerKidName.text} aprenderá a imitar algumas ações e sons, por isso aproveite a brincadeira aumentando seu elo afetivo e interação.',
          ),textCTRST(stg1: '\u2055 Siga as orientações de profissionais capacitados (nutricionista, pediatra) sobre introduzir novos alimentos para ${store.controllerKidName.text}.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Crianças nessa idade adoram conversar e ouvir conversas. Conte uma história para ${store.controllerKidName.text}, com muitos sons e muitos sorrisos. Esse momento também deve ser para você relaxar, deixando de lado a rotina diária.',
          ),textCTRST(stg1: '\u2055 Atenção com os objetos muito pequenos, proteja ${store.controllerKidName.text}, não ofereça objetos que geram riscos. As crianças colocam tudo na boca, objetos que soltam pequenas peças também são de grande risco. Não deixa ${store.controllerKidName.text} em locais altos que não ofereça segurança. Transporte sempre ${store.controllerKidName.text} na cadeirinha de segurança no carro, devidamente instalada. Proteja!'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Em determinados momentos da história faça cócegas em ${store.controllerKidName.text}, estimulando os músculos da face (pelo sorriso) e do tronco (pela força) que bebê irá fazer em resposta as cócegas.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nesta etapa, os movimentos efetuados de ',
            stg2: 'barriguinha para baixo',
            stg3: ' são muito importantes para as conquistas das próximas etapas, como o andar. Então, deixe ${store.controllerKidName.text} em diferentes horários do dia brincando de barriga para baixo, você presenciará a grande evolução e as novas conquistas no desenvolvimento. '
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 As crianças pouco expostas nesta posição de ',
              stg2: 'barriguinha para baixo',
              stg3: ', geralmente, se expressam com desconforto fazendo caretinha e chorinho. Frente a essa situação, precisamos proporcionar essa experiência na posição para ${store.controllerKidName.text} acostumar. Em cada período do dia você coloca um pouquinho ${store.controllerKidName.text} de barriga para baixo e brinca, aos poucos acostumará!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular os movimentos laterais. Com ${store.controllerKidName.text} na posição ',
            stg2: 'sentado(a)',
            stg3: ', se posicione atrás de ${store.controllerKidName.text} e interaja com ele (a), falando “oooii”, “cadê ${store.controllerKidName.text}?”, fazendo um barulho com o brinquedo/objeto.'
          ),textCTRST(stg1: '\u2055 Os rituais de sono de ${store.controllerKidName.text} são importantes. Agora, ${store.controllerKidName.text} começa a dormir a noite inteira e é possível começar a retirar as sonecas diurnas. Peça ajuda a sua (seu) pediatra para fazer a transição.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} irá procurar o som, virando-se o corpo para encontrá-lo e quando acontecer o movimento, sorria e com muita festa por suas tentativas, sempre com o contato visual face a face para estimular o sorriso de ${store.controllerKidName.text} também.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos ver a ',
            stg2: 'movimentação em todas as posições corporais',
            stg3: ', você poderá estimular de forma voluntária. Registre! Como os movimentos de ${store.controllerKidName.text} estão de barriga para baixo, barriga para cima, rolar e sentado. Deixe no álbum do aplicativo os registros. Vamos comemorar juntos essas conquistas!'
          ),textCTRST(stg1: '\u2055 Cuidado com portas de armários que guardam produtos de limpeza. Evite acidentes domésticos.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais. O sorriso e a gargalhada já fazem parte da linguagem da criança!',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Um movimento novo, coloque ${store.controllerKidName.text} em pé com apoio (sofá, cadeira) pegue a mão de ${store.controllerKidName.text} e estimule a sentar no chão, vamos treinar o agachamento.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV30TASK5'),

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
