import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa36Page extends StatefulWidget {
  final String title;
  const Tarefa36Page({Key? key, this.title = 'Tarefa36Page'}) : super(key: key);
  @override
  Tarefa36PageState createState() => Tarefa36PageState();
}

class Tarefa36PageState extends State<Tarefa36Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 4"),
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
                                "SIGA A 4ª TAREFA EM CASA",
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
                                    Image.asset('images1/fig1012-1.jpeg'),
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
                                          'Brincadeiras que estimulem sentar, ajoelhar e colocar-se em pé fornecem estímulos sensoriais que são primordiais para o bom desenvolvimento. Alguns movimentos são de preferência da criança, mas é importante estimular e vencer movimentos de baixa preferência e novos. Então, vamos estimular e compartilhar as brincadeiras.'),
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
                                      MediaQuery.of(context).size.height * 1.38,
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
                                          'A linguagem deve ser desenvolvida.Para tanto, observe todas as tentativas de sonorização de ${store.controllerKidName.text}. Dê-lhe tempo de tentar interagir, não tente adivinhar de primeira vez somente com a expressão e gestos. Fique atento(a) a qualquer tentativa de verbalização para reforçar o significado. '),
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
                                          'Mantenha a carteirinha da criança em dia e não falta nas consultas regulares de acompanhamento. Acompanhe a vacinação e verifique se está em dia! Siga somente orientações do cuidado da criança com profissionais da saúde e de sua confiança. Cuidado com quedas em lugares altos, cadeirinha, carrinho, proteja ${store.controllerKidName.text} contra acidentes evitáveis!'),
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
                                                          builder: ((context) =>
                                                              const TaskThirteenSix())));
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

class TaskThirteenSix extends StatefulWidget {
  const TaskThirteenSix({super.key});

  @override
  State<TaskThirteenSix> createState() => _TaskThirteenSixState();
}

class _TaskThirteenSixState extends State<TaskThirteenSix> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV36").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV36';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV36';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 36"),
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
                height: MediaQuery.of(context).size.height * 6.6,
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
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Menos colo, mais chão. Deixe ${store.controllerKidName.text} brincar no chão, dentro dos limites que já está acostumado(a)e seguro, deixando-o(a) explorar osbrinquedos favoritos. Estimule a independência.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Mantenha as vacinas de ${store.controllerKidName.text} em dia! Busque informações corretas de profissionais capacitados.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Aproveite para incentivá-lo(a) a imitar os sons dos brinquedos disponíveis, a apontar e a pedir “me dá” ou “dá” demonstrando os que mais agrade. Ensina ${store.controllerKidName.text} a fazer “tchau” para um brinquedo e logo ofereça o brinquedo novamente, pois vai entender que desaparecerá e depois retornará.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Conversar e dedicar-se a momentos de carinho são essenciais para o desenvolvimento de ${store.controllerKidName.text}.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Escolha um exercício que associa movimentos das tarefas anteriores para repetir o estimulo neste momento. Observe se a execução do movimento de ${store.controllerKidName.text} está melhor, mais rápido, com maior independência e domínio. Estimule ${store.controllerKidName.text} na posição de pé com apoio no sofá e deixe com que agache e pegue o brinquedo e, logo em seguida, deixe cair um objeto perto de ${store.controllerKidName.text} e estimule o movimento de agachar e levantar.',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos aproveitar o apoio no sofá e estimular o andar de ${store.controllerKidName.text} apoiando no próprio sofá, coloque um brinquedo ou objeto na extremidade do sofá e estimule ${store.controllerKidName.text} a pegá-lo. Ao final da atividade parabenize com palmas, viva e incentiva sempre as atividades de forma positiva.',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV36TASK1'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos incentivar ${store.controllerKidName.text} a falar! Faça sons como “papapá” para ensinar a palavra papai e “mãmãmã” para a palavra mamãe. Faça sempre primeiro e deixe-o(a) observar você fixamente. Se tiver animais em casa incentive a reconhecer pelo som de “au-au” docachorro e “miau”dos gatos. Após qualquer emissão de som de ${store.controllerKidName.text}, festeje sua tentativa! Faça esse exercício sempre que possível.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Quando for transportar ${store.controllerKidName.text} em um veículo, use cadeirinha apropriada pra idade e garanta a segurança de ${store.controllerKidName.text} ao prendê-la no veículo.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Coloque uma música infantil e estimule ${store.controllerKidName.text} a dançar, se estiver sentado faça movimento mexendo o tronco do corpo e a cabeça de um lado para o outro, levantando as mãos ou batendo palmas, se estiver ',
                          stg2: 'em pé com apoio',
                          stg3:
                              ' do sofá estimule a fazer o movimento de dobrar os joelhos e esticar. É um ótimo exercício!'),
                      textCTRST(
                          stg1:
                              '\u2055 Nessa fase, ${store.controllerKidName.text} já demonstra afeto com abraços, beijos e sorrisos. Demonstre a ${store.controllerKidName.text} seu afeto por ele (a) também.'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV36TASK2'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Vamos ensinar ${store.controllerKidName.text} o ritmo da música. Coloque para tocar uma musica infantil que seja a preferida de ${store.controllerKidName.text} e bata suas mãos no mesmo ritmo que a música. Ensine ${store.controllerKidName.text} a bater as mãos no mesmo ritmo que você.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Mantenha a carteirinha da criança em dia e não falte nas consultas regulares de acompanhamento. Acompanhe a vacinação e verifique se está em dia! Siga somente orientações do cuidado da criança com profissionais da saúde e de sua confiança. Cuidado com quedas em lugares altos, cadeirinha, carrinho entre outros riscos. Proteja ${store.controllerKidName.text} contra acidentes evitáveis!'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Um dos melhores jeitos de desenvolver a coordenação motora é ensinar ritmo a ${store.controllerKidName.text}, mesmo que no início ele(a) faça a tarefa de maneira desengonçada.',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Cante uma canção para ${store.controllerKidName.text}! Uma música alegre, com um ritmo que incentive a bater palmas. Faça sempre primeiro e deixe-o(a) observar você.  Faça isso sempre estimulando ${store.controllerKidName.text} a fixar a atenção em você.',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV36TASK3'),

                      const SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Durante o banho de sol, deixe ${store.controllerKidName.text} em posição ',
                          stg2: 'sentado(a)',
                          stg3:
                              ' sobre uma superfície segura. Deixe ${store.controllerKidName.text} livre pra explorar o ambiente, mas esteja sempre por perto para proteger de ocorrências indesejadas.'),
                      textCTRST(
                          stg1:
                              '\u2055 Cada criança se desenvolve no seu próprio tempo e conquista vitórias em épocas diferentes. Por isso, é importante você sempre se atentar a cada conquista, e caso tenha dúvidas, procure profissionais qualificados ou entre em contato conosco.'),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Tire alguns minutos desse momento e aproveite para praticar a linguagem perguntando “Cadê ${store.controllerKidName.text}?”, Cadê mamãe?”, “Cadê o au-au?” e assim por diante. Espere ${store.controllerKidName.text} responder, não responda por ${store.controllerKidName.text}. Estimule a expressão de ${store.controllerKidName.text}.',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos estimular os movimentos associativos: de ',
                          stg2: 'barriguinha para baixo',
                          stg3:
                              ', gira o tronco para sentar; sentado(a) gira o tronco para engatinhar; engatinhando apoia-se para levantar e ficar de pé com apoio. Proporciona o espaço para ocorrer os movimentos!'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Radin(task:'DEV36TASK4'),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0, top: 30.0),
                        child: Text(
                          
                          "Estamos indo muito bem com a estimulação!Parabéns!"
                          "\nFinalizamos mais uma etapa! Vamos iniciar um novo ciclo! Entre na última aba que representa avaliação do desenvolvimento e verifique como ${store.controllerKidName.text} está indo até este momento.",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 193, 61, 39),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
