import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa33Page extends StatefulWidget {
  final String title;
  const Tarefa33Page({Key? key, this.title = 'Tarefa33Page'}) : super(key: key);
  @override
  Tarefa33PageState createState() => Tarefa33PageState();
}

class Tarefa33PageState extends State<Tarefa33Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV33").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV33';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV33';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 33"),
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
                                "SIGA A 33ª TAREFA EM CASA",
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
                                              'images1/fig1012-1.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig1012-8.jpeg',
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
                                          'É importante para ${store.controllerKidName.text} todos os estímulos que reforça os movimentos aprendidos. No inicio é difícil, mas a cada semana cumprindo as tarefas esses movimentos irão se tornar mais fáceis e de melhor domínio. Comece a reduzir a sua ajuda para que ${store.controllerKidName.text}efetue os movimentos e deixe que ${store.controllerKidName.text} adquira força muscular e equilíbrio, pois é primordial para o andar de forma independente.'),
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
                                      MediaQuery.of(context).size.height * 1.26,
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText('\u25CF Som',
                                          'Sempre que for ensinar uma palavra para ${store.controllerKidName.text}, faça de maneira devagar os movimentos da boca, dê o sentido da palavra mostrando o objeto. Assim, ${store.controllerKidName.text} irá copiar seus gestos e associar a palavra com a situação do ambiente.'),
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
                                          'A criança nessa idade quer explorar e é muito curiosa. Tenha cuidado com objetos próximos a ele(a), degraus e escadarias. Também evite deixar ${store.controllerKidName.text} explorar estantes ou mesas que possam balançar e que um objeto possa cair na criança. Evite acidentes, proteja sua criança!'),
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
                                                      builder: ((context) => const TaskThirteenTh())
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
class TaskThirteenTh extends StatefulWidget {
  const TaskThirteenTh({super.key});

  @override
  State<TaskThirteenTh> createState() => _TaskThirteenThState();
}

class _TaskThirteenThState extends State<TaskThirteenTh> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 33"),
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
              stg1: '\u2055 Frases curtas, o tom de voz, gestos e as expressões faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensações e sentidos da fala do adulto. Faça esses exercícios periodicamente. Vamos construindo pequenas frases de atividade do dia a dia e repetindo para ${store.controllerKidName.text}, “Quem vai tomar banho agora?”, “Cadê a vovó, o titio ...”, “Agora é hora de dormir”...',
          ),textCTRST(stg1: '\u2055 Certifique-se de que o ambiente que você deixa ${store.controllerKidName.text} é livre de objetos que possam colocar em risco a segurança e saúde da criança.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Procure fazer as atividades e tarefas com ${store.controllerKidName.text} nos mesmos horários do dia, a rotina diária estabelecida é mais saudável para ${store.controllerKidName.text} (ficará mais calmo, concentrado e com maior interação no ambiente). Organize o tempo, você também precisa para seus cuidados!',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer o gesto de tchau. Primeiro, você irá fazer o movimento e depois peça para ${store.controllerKidName.text} fazer também. Caso ${store.controllerKidName.text} tenha dificuldades em levantar os braços ou a mão, mostre como fazer, pegando no bracinho dele(a). A repetição do estimulo é importante para o aprendizado e memorização.',
          ),textCTRST(stg1: '\u2055 Ao conversar com outras mães/pais/cuidadores de outra criança, tenha cuidado ao anunciar uma nova conquista de ${store.controllerKidName.text}. Essa informação poderá deixar o outro cuidador preocupado. Cada criança tem um tempo para o desenvolvimento.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Você deverá sentar no chão com ${store.controllerKidName.text} na sua frente e, com uma das suas mãos, você mostrará o brinquedo e logo após esconde essa mão atrás do seu corpo, vamos ver a reação de ${store.controllerKidName.text}. A observação poderá ser predominante, então você mostra o brinquedo novamente e esconde, vamos estimulando ${store.controllerKidName.text} para o deslocamento em busca do objeto.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais com parabéns, cantando músicas infantis e com brincadeiras sentirá a importância das suas conquistas e seu apoio em casa fase.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posição ',
            stg2: 'barriguinha pra cima',
            stg3: ', ofereça seus dedos para ele(a) segurar e incentive para que ${store.controllerKidName.text} passe para a posição sentado(a).'
          ),textCTRST(stg1: '\u2055 Ofereça brinquedos próprios para a idade de ${store.controllerKidName.text}. Busque ajuda especializada para escolher os melhores brinquedos ou entre em contato conosco.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 É importante estimular a independência. Por isso, nessa tarefa, tente oferecer o menor suporte possível para que ${store.controllerKidName.text} consiga sentar sozinho(a).',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore sempre, cantando músicas infantis e com brincadeiras sentirá a importância das suas conquistas e seu apoio em casa fase.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer caretas. Faça você movimentos de abrir bem a boca, falando “aaaa”; mexer e enrugar o nariz, fazendo “bichinhos” “caminhãozinho”. Estimule ${store.controllerKidName.text}, fazendo com que ocorra a imitação.',
          ),textCTRST(stg1: '\u2055 É preciso cuidar do ambiente para proteger ${store.controllerKidName.text} de ocorrências alérgicas, o ambiente deve ser limpo diariamente, e evitar cortinas, tapetes, almofadas. A casa deverá manter arejada com janelas abertas e cuidado com mofo e umidade nas paredes, pois podem desencadear situação de adoecimento de ${store.controllerKidName.text}.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Durante o exercício, ofereça um brinquedo para ${store.controllerKidName.text} segurar e o estimule a soltar, (quando soltar) diga “Ahhhh, caiu!”. Recomece oferecendo e deixe ${store.controllerKidName.text} pegar, mas antes pergunte “Você quer?”e vá repetindo como uma brincadeira, dialogando sempre, face a face.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 ${store.controllerKidName.text} deitado de ',
            stg2: 'barriguinha para baixo',
            stg3: ', coloque um brinquedo ou objeto de preferencia um pouco distante e na lateral do corpo de ${store.controllerKidName.text}, mexa no brinquedo e deixe-o no mesmo lugar para chamar a atenção de ${store.controllerKidName.text}. Vamos somente observar, fique um pouco distante de ${store.controllerKidName.text} para que não perceba a sua presença. Deixa ${store.controllerKidName.text} em seu tempo organizar o seu deslocamento corporal com movimentos em busca do brinquedo. Os movimentos deverão ser livres sem interferência do adulto. Se não conseguir alcançar o brinquedo neste momento, vai repetindo a brincadeira, uma hora que menos esperar vai acontecer!'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Se o ambiente tiver um degrau de escada e com a sua supervisão direta, coloque ${store.controllerKidName.text} no inicio do degrau e na parte de cima deixe um brinquedo, estimule ${store.controllerKidName.text} a ficar de joelho e mãos na parte superior do degrau, a partir desta postura, estimule dobrar um joelho e subir para alcançar o brinquedo.',
          ),textCTRST(stg1: '\u2055 Sempre esterilize qualquer utensílio de cozinha que ${store.controllerKidName.text} use para se alimentar ou que você use para preparar e colocar a comida.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Depois do movimento acima ser executado por ${store.controllerKidName.text}, estimule com sua ajuda a descer o degrau de bumbum.',
          ),textCTRST(stg1: '\u2055 Cuidado ao levar ${store.controllerKidName.text} para ambientes abertos. Cuide para que os olhos de ${store.controllerKidName.text} estejam protegidos do sol.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Momento de incorporar na rotina algumas sílabas na conversa como, por exemplo: “dá aqui para mamãe”. Assim, vá estimulando a prática do “dá-dá-dá”, “mã-mã-mã” e/ou “pá-pá-pá” e mesmo o “me dá”, “cadê”, tó...',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV33TASK5')

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
