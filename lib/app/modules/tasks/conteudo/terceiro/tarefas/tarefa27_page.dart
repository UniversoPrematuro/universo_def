import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa27Page extends StatefulWidget {
  final String title;
  const Tarefa27Page({Key? key, this.title = 'Tarefa27Page'}) : super(key: key);
  @override
  Tarefa27PageState createState() => Tarefa27PageState();
}

class Tarefa27PageState extends State<Tarefa27Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 27"),
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
                                "SIGA A 27ª TAREFA EM CASA",
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
                                              'images1/fig79-4.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-5.jpeg',
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
                                            'images1/fig79-1.jpeg',
                                          ),
                                        )
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
                                          'Brincadeiras que estimulem sentar,'
                                              ' ajoelhar e colocar-se em pé fornecem estímulos sensoriais que '
                                              'são primordiais para o bom desenvolvimento. Alguns movimentos são'
                                              ' de preferência da criança, mas é importante estimular e vencer '
                                              'movimentos de baixa preferência e novos.'),
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
                                      MediaQuery.of(context).size.height * 1.05,
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
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          '- Converse, cante e mostre os diferentes'
                                              ' sons para ${store.controllerKidName.text}.'),
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
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '- Deixe ${store.controllerKidName.text} com objetos seguros, '
                                              'sem risco de acesso às pequenas peças.\n- Evite o risco de quedas.'
                                              ' Mantenha ${store.controllerKidName.text} em lugar plano e seguro. Cuidado com lugares altos.'),
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
                                                              const TaskTwentSe())));
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

class TaskTwentSe extends StatefulWidget {
  const TaskTwentSe({super.key});

  @override
  State<TaskTwentSe> createState() => _TaskTwentSeState();
}

class _TaskTwentSeState extends State<TaskTwentSe> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 27"),
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
                height: MediaQuery.of(context).size.height * 4.8,
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
                              Container(
                                width: 100.0,
                                child: Image.asset("images1/Personagemai.png"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 0.0, 20.0),
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

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Menos colo, mais chão. Deixe ${store.controllerKidName.text} brincar no chão, dentro dos limites que já está acostumado (a) e seguro, deixe explorar os brinquedos favoritos. Estimule a independência.',
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Evite expor ${store.controllerKidName.text} a objetos que possam gerar curiosidade e que possam machucar. Uma gaveta aberta sem supervisão pode ser perigosa. ${store.controllerKidName.text} pode começar a se movimentar pela casa, seja arrastando ou engatinhando. Coloque tampas plásticas nas tomadas que não estiverem em uso.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Aproveite para incentivá-lo a imitar os sons dos brinquedos disponíveis, a apontar e a pedir “me dá” ou “dá” demonstrando os que mais agrade. Ensina ${store.controllerKidName.text} a fazer “tchau” para um brinquedo e logo ofereça o brinquedo novamente, pois vai entender que desaparecerá e depois retornará.',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                        stg1:
                            '\u2055 Escolha um exercício que associa movimentos das tarefas anteriores para repetir o estimulo neste momento. Observe se a execução do movimento de ${store.controllerKidName.text} está melhor, mais rápido, com maior independência e domínio.',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV27TASK1'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos incentivar ${store.controllerKidName.text} a falar! Faça sons como “papapá” para ensinar a palavra papai e “mãmãmã” para a palavra mamãe. Faça sempre primeiro e deixe-o observar você fixamente. Se tiver animais em casa incentive a reconhecer pelo som de “au-au” para cachorro e “miau” para gatos. Após qualquer emissão de som de ${store.controllerKidName.text} festeje sua tentativa! Faça esse exercício sempre que possível.'),
                      textCTRST(
                          stg1:
                              '\u2055 É importante manter uma rotina de atividades de ${store.controllerKidName.text}, mantenha os horários de sono. ${store.controllerKidName.text} expressa cada vez mais os sentimentos com o meio ambiente (sorri, chora, grita, compreende os sons que ouve). Assim, você poderá interagir com ${store.controllerKidName.text}, nas expressões de alegria com um sorriso e nas expressões de irritabilidade com o seu aconchego para acalmar.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Coloque uma música infantil e estimule ${store.controllerKidName.text} a dançar, se estiver sentado faça movimento mexendo o tronco do corpo e a cabeça de um lado para o outro, levantando as mãos ou batendo palmas, se estiver ',
                          stg2: 'em pé com apoio',
                          stg3:
                              ' do sofá estimule a fazer o movimento de dobrar os joelhos e esticar. É um ótimo exercício!'),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV27TASK2'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Vamos ensinar ${store.controllerKidName.text} o ritmo da música. Coloque para tocar uma musica infantil que seja a preferida de ${store.controllerKidName.text} e bata suas mãos no mesmo ritmo que a música. Ensine ${store.controllerKidName.text} a bater as mãos no mesmo ritmo que você.'),
                      textCTRST(
                          stg1:
                              '\u2055 Aproveita o horário do banho para deixar ${store.controllerKidName.text} relaxado usando uma forma divertida, que é o contato com a água e com o próprio corpo. O banho pode representar o momento para acalmar e logo após a hora do sono. Cuidado com produtos inapropriados para a criança, perfumes e materiais para adultos podem provocar reações alérgicas.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Um dos melhores jeitos de desenvolver a coordenação motora é ensinar ritmo a ${store.controllerKidName.text}, mesmo que no inicio ele(a) faça a tarefa de maneira desengonçada.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Cante uma canção para ${store.controllerKidName.text}! Uma música alegre, com um ritmo que incentive a bater palmas. Faça sempre primeiro e deixe-o observar você.  Faça isso sempre estimulando ${store.controllerKidName.text} a fixar a atenção em você.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV27TASK3'),

                      SizedBox(
                        height: 60.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Durante o banho de sol, deixe ${store.controllerKidName.text} em posição ',
                          stg2: "sentado (a)",
                          stg3:
                              " sobre uma superfície segura. Deixe ${store.controllerKidName.text} livre pra explorar o ambiente, mas esteja sempre por perto para proteger de ocorrências indesejadas."),
                      textCTRST(
                          stg1:
                              '\u2055 Estamos finalizando mais uma etapa, parabéns! O seu papel com ${store.controllerKidName.text} tem sido fundamental para obter o desenvolvimento e crescimento. Vamos passar para a outra etapa de 10 a 12 meses, chegamos na última tarefa desta idade de 6 a 9 meses. Vamos preparar para chegar e comemorar o primeiro ano de vida. PARABÉNS!!!'
                              '\n\u2055 Registre com fotos e filmagem de ${store.controllerKidName.text} e coloque na galeria de fotos do aplicativo Universo Prematuro. Queremos compartilhar essa alegria da conquista.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      textCTRST(
                          stg1:
                              '\u2055 Tire alguns minutos desse momento e aproveite para praticar a linguagem perguntando “Cadê ${store.controllerKidName.text}”, Cadê mamãe”, “Cadê o au-au” e assim por diante. Espere ${store.controllerKidName.text} responder, não responda por ${store.controllerKidName.text}. Estimule a expressão de ${store.controllerKidName.text}.'),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              'Vamos estimular os movimentos associativos: de ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'barriguinha para baixo',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ', gira o tronco para sentar; '),
                            TextSpan(
                                text: 'sentado (a)',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'gira o tronco para engatinhar; engatinhando apoia-se para levantar e ficar de '),
                            TextSpan(
                                text: 'pé com apoio',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    '. Proporciona o espaço para ocorrer os movimentos!'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Radin(UID,'DEV27TASK4'),

                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0, top: 30.0),
                        child: Text(
                          "Estamos indo muito bem com a estimulação! Parabéns finalizamos mais uma etapa! Vamos iniciar um novo ciclo!",
                          style: TextStyle(
                              color: Color.fromARGB(255, 193, 61, 39),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
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
