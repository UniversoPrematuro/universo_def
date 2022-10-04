import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa35Page extends StatefulWidget {
  final String title;
  const Tarefa35Page({Key? key, this.title = 'Tarefa35Page'}) : super(key: key);
  @override
  Tarefa35PageState createState() => Tarefa35PageState();
}

class Tarefa35PageState extends State<Tarefa35Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV35").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV35';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV35';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 35"),
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
                                "SIGA A 35ª TAREFA EM CASA",
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
                                          viewportFraction: 0.75,
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
                                              'images1/fig79-6.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig1012-9.jpeg',
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
                                          'Cada vez mais ${store.controllerKidName.text} se esforça para andar com ajuda dos móveis seguros da casa. Deixe que ${store.controllerKidName.text} explore esse movimento de forma independente. As quedas da própria altura acontecerão, fique calma(o) e incentive o levantar, “pulouuuu”'),
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
                                      MediaQuery.of(context).size.height * 1.5,
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
                                          'A qualquer tentativa de emissão de som, por parte de ${store.controllerKidName.text}, encoraje mais e mais. Procure não ficar entendendo a comunicação por gestos ou olhares e mesmo situações que direciona o dedo para mostrar a vontade do alcance do objeto. Vamos em frente!'),
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
                                          'Essa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no chão para brincar. Limpe todo o ambiente, principalmente nos cantos das paredes, embaixo do sofá e locais que os brinquedos fiquem guardados, para evitar algum contratempo com bichos indesejáveis.'),
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
                                                      builder: ((context) => const TaskThirteenFi())
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
class TaskThirteenFi extends StatefulWidget {
  const TaskThirteenFi({super.key});

  @override
  State<TaskThirteenFi> createState() => _TaskThirteenFiState();
}

class _TaskThirteenFiState extends State<TaskThirteenFi> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 35"),
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
              stg1: '\u2055 Outro movimento associado, ${store.controllerKidName.text} ',
              stg2: 'sentado(a)',
              stg3: ' estimule o deslocamento, fique um pouco distante de ${store.controllerKidName.text} e chame ${store.controllerKidName.text} para vir até você. Para a ocorrência do movimento terá que mudar da posição sentado para barriga para baixo, gerando o arrastar e/ou engatinhar.'
          ),textCTRST(stg1: '\u2055 Para ${store.controllerKidName.text} se movimentar com segurança, a família deve organizar um espaço na casa. Tirar do alcance dele (a) os objetos que não pode pegar, bloquear de forma segura o acesso à cozinha ou a outro local perigoso com portãozinho próprio ou mesmo uma cadeira segura.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ofereça brinquedos que fazem barulhos. O ruído, associado ao movimento que ${store.controllerKidName.text} deve fazer para gerar o som, é uma maneira divertida de ensinar que toda ação tem uma reação.',
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Por exemplo, um cachorrinho de brinquedo, ensine a imitar e a chamar de “au... au...”. Faça você primeiro, mostre e explique como se faz, sempre identifique as ações verbalizando todas as etapas.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} na posição ',
            stg2: 'barriguinha pra baixo',
            stg3: ', coloque o brinquedo favoritoa sua frente e deixe brincar um pouco e explorar o brinquedo, depois você sentada na cadeira próximo de ${store.controllerKidName.text} pegue o brinquedo e deixe ${store.controllerKidName.text} vir atrás para alcançá-lo. ${store.controllerKidName.text} irá se deslocar no chão, apoiar em suas pernas e subir, você pode apoiar oferecendo a sua mão para ajudar o movimento.'
          ),textCTRST(stg1: '\u2055 Ajude ${store.controllerKidName.text} a aproveitar a hora do banho ao máximo. Incentive a experimentação com brincadeiras.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 No momento do movimento acima, interaja com ${store.controllerKidName.text} conversando sobre o brinquedo chamando a atenção e dialogando. ',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está crescendo e consegue fazer muitos movimentos sozinho, deixe-o executar as novas habilidades, assim ${store.controllerKidName.text} sentirá o prazer da conquista e o sucesso da execução.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Repita essa tarefa para o aprendizado do movimento, fortalecimento dos músculos e melhorando o equilíbrio.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Busque recipientes de plástico na sua casa, que tenham tampa. Com ${store.controllerKidName.text} na posição ',
              stg2: 'sentado(a)',
              stg3: ', ensine ${store.controllerKidName.text} a tampar os recipientes, sempre oferecendo ajuda quando necessário.'
          ),textCTRST(stg1: '\u2055 É importante adaptar a casa para ${store.controllerKidName.text}. Certifique-se de colocar objetos perigosos em locais mais altos e seguros.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Perto do recipiente de plástico com tampa deixe alguns brinquedos de diferentes tamanhos, formas e cores que possam ser guardados no pote. Mostre a possibilidade de guardar os objetos no pote e tirá-los. Após a demonstração, deixe ${store.controllerKidName.text} brincar sozinho interagindo e observando os detalhes de sua brincadeira.',
          ),textCTRST(stg1: '\u2055 Proporciona o espaço adequado para os movimentos de ${store.controllerKidName.text}, deixe brincar sozinho mantendo a sua supervisão a distância.'),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar de esconder! Guarde o brinquedo favorito de ${store.controllerKidName.text} em um lugar acessível, no local que está ocorrendo a brincadeira, e permita que ${store.controllerKidName.text} veja onde o brinquedo está. Incentive o arrastar e/ou engatinhar para que ${store.controllerKidName.text} busque o brinquedo e aproveite para experimentar a conquista da recuperação do brinquedo.',
          ),textCTRST(stg1: '\u2055 Nessa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no chão para brincar,portando o ambiente deve estar bem limpoe higienizado, principalmente nos cantos das paredes, embaixo do sofá e locais que os brinquedos fiquem guardados, para evitar algum contratempo com insetos indesejáveis.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Continuando a brincadeira do esconde-esconde, na posição ',
              stg2: 'sentado(a)',
              stg3: ', esconda o brinquedo embaixo de uma almofada e deixe ${store.controllerKidName.text} achar, girando o tronco, apoiando uma mão na lateral... Ao final da brincadeira, achando o brinquedo, vamos comemorar com um “vivaaaa”. As palavras de apoio ajudam o interesse no movimento e estimula para a repetição e aprendizado.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK4'),

          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Com ${store.controllerKidName.text} no seu colo, segure-o(a) e faça movimentos de modo que ele(a) pareça estar pulando. Incentive que ${store.controllerKidName.text} faça força nas perninhas.',
          ),textCTRST(stg1: '\u2055 Ao dormir, ${store.controllerKidName.text} descansa de todos os estímulos que recebeu enquanto acordado (a). Desta forma, ofereça horas com qualidade de sono.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 A cada tentativa brinque dizendo, por exemplo: “upa”, “ehhh”ou outras pequenas expressões sonoras de interação positiva.',
          ),textCTRST(stg1: '\u2055 Siga as orientações de todos os profissionais da saúde que estão acompanhando o desenvolvimento de ${store.controllerKidName.text}. Qualquer dúvida, nos envie seus questionamentos e dúvidas acessando a tecla“FALE CONOSCO”.'),
          const SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Permita alguns momentos em lugar seguro e de costume de permanência de ${store.controllerKidName.text}, observe e deixe brincar sozinho(a) para explorar com atenção e observação aos brinquedos.',
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV35TASK5'),

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
