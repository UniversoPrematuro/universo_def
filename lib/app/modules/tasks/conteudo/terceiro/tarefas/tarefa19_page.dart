import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa19Page extends StatefulWidget {
  final String title;
  const Tarefa19Page({Key? key, this.title = 'Tarefa19Page'}) : super(key: key);
  @override
  Tarefa19PageState createState() => Tarefa19PageState();
}

class Tarefa19PageState extends State<Tarefa19Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 19"),
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
                                "SIGA A 19ª TAREFA EM CASA",
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
                                              'images1/fig79-5.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-4.jpeg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
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
                                          'A criança está adquirindo '
                                              'habilidades fundamentais. Nessa fase, incentive o sentar sem '
                                              'apoio e o arrastar no chão. O desenvolvimento de ${store.controllerKidName.text} está '
                                              'ocorrendo aos poucos e novas conquistas de habilidades vão '
                                              'aparecer nesta nova etapa. Vamos continuar com as tarefas!'),
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
                                      MediaQuery.of(context).size.height * 1.20,
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
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Linguagem',
                                          'O estímulo a linguagem é muito '
                                              'importante e ${store.controllerKidName.text} vai aprender mais se o ambiente possuir relação'
                                              ' saudável. Estimule, converse, beije, aninhe, brinca, convive com'
                                              ' os familiares e amigos, são exemplos de como construir uma forte'
                                              ' relação e saudável.'),
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
                                                      builder: ((context) => const TaskNinet())
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
class TaskNinet extends StatefulWidget {
  const TaskNinet({super.key});

  @override
  State<TaskNinet> createState() => _TaskNinetState();
}

class _TaskNinetState extends State<TaskNinet> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 19"),
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
                height: MediaQuery.of(context).size.height * 5.5,
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

                      textCTRST(
            stg1: '\u2055 A exploração do ambiente torna-se uma atividade '
                'dominante para ${store.controllerKidName.text}. O espaço de convivência está à espera de '
                '${store.controllerKidName.text} para ser descoberto. Incentive ${store.controllerKidName.text} a explorar em alguns '
                'momentos sozinho(a), o espaço da casa e também com os seus '
                'brinquedos, para perceber todos os objetos do ambiente, não '
                'esqueça, sempre com supervisão e em um local seguro.'),textCTRST(stg1: '\u2055 A exploração de objetos e do ambiente torna-se uma atividade dominante. Incentive ${store.controllerKidName.text} a explorar com independência todos os ambientes da casa, sempre com supervisão. Observe a reação de ${store.controllerKidName.text} nas brincadeiras!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Deixe ${store.controllerKidName.text} um tempinho sozinho de barriguinha para '
                  'baixo, coloque alguns brinquedos na frente e vamos observar o'
                  ' deslocamento de ${store.controllerKidName.text} para o alcance do objeto. Aos poucos a '
                  'distância do brinquedo deve ser maior, para ${store.controllerKidName.text} percorrer o '
                  'maior deslocamento.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV19TASK1'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular a independência de ${store.controllerKidName.text}! Dê o '
                  'brinquedo favorito.'
          ),textCTRST(stg1: '\u2055 Retire os enfeites, móveis leves que podem cair em cima de ${store.controllerKidName.text}. Lembre-se, com o desenvolvimento a criança explora melhor o ambiente. É incrível! Ontem o movimento não era executado e neste momento o movimento pode aparecer. Observamos que é o marco do primeiro aparecimento do novo movimento.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} responde quando o chama, faz '
                  'imitação de gestos e caretas com a expressão do rosto. '
                  'Fortaleça a memória de ${store.controllerKidName.text}, chamando pelo seu nome e inicie'
                  ' um diálogo com ${store.controllerKidName.text} nomeando também o brinquedo e objetos '
                  'que estiver em seu alcance. É importante sempre falar os '
                  'nomes dos objetos e mostra-los para ${store.controllerKidName.text}.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV19TASK2'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Brinquedos ou objetos que reproduzem barulho são '
                  'fascinantes para crianças. Vamos aproveitar! Com ${store.controllerKidName.text} ',
              stg2: "sentado (a)",
              stg3: ", provoca sua atenção com um barulho ao redor de"
                  " ${store.controllerKidName.text}, assim poderá movimentar a cabeça e o corpo para olhar"
                  " em direção ao som e descobrir qual o objeto está "
                  "proporcionando o som, assim conseguiremos estimular ${store.controllerKidName.text} nos"
                  " movimentos laterais."
          ),textCTRST(stg1: '\u2055 Fique atenta(o) a troca de fraldas. Nunca deixe fralda suja por mais tempo além do necessário.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos aproveitar esse momento dando-lhe atenção para'
                  ' que sinta segurança e afeto. Fale com ${store.controllerKidName.text} sempre sorrindo '
                  'brincando com expressões faciais de carinho. Momentos alegres'
                  ' e agradáveis colaboram para o melhor aprendizado e desenvolvimento.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está desenvolvendo e crescendo, consegue comunicar com maior independência, mas é hora de redobrar a atenção.\n- Nunca deixe ${store.controllerKidName.text} totalmente sozinho sem supervisão,\n- Não deixe com pessoas desconhecidas, proteja contra os acidentes domésticos.\n- Verifique na casa o que poderia oferecer perigo, algum móvel, objetos pequenos e lembre, essa fase ${store.controllerKidName.text} pode segurar em superfície mais alta para se levantar, cuidado com toalhas de mesa em seu alcance.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV19TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 É hora de buscar o brinquedo no chão, de barriga '
                  'para baixo ${store.controllerKidName.text} deverá ser estimulado para pegar ou recuperar'
                  ' o objeto (brinquedo, coisas representativas da casa), assim'
                  ' irá fazer o movimento de arrastar. No início pode ajudar com'
                  ' o apoio de suas mãos no pezinho para impulsionar e logo '
                  'estará executando o movimento sem a ajuda.'
          ),textCTRST(stg1: '\u2055 Neste momento do desenvolvimento os objetos menores podem ser alcançados e manuseados pela criança. Não deixe peças pequenas nos locais de acesso (chão, berço), muito cuidado com remédios, principalmente quando acidentalmente caem no chão, objetos pontiagudos também gera risco, os materiais de limpeza devem ser manuseados longe das crianças e armazenados em ambientes seguros.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Vamos brincar de esconde/esconde. Para a brincadeira'
                  ', vamos pegar o brinquedo que ${store.controllerKidName.text} gosta, começou a '
                  'brincadeira, esconde o brinquedo e depois mostra o brinquedo'
                  ' e fala, achou! Mas agora é hora de deixar ${store.controllerKidName.text} fazer um '
                  'esforço e tentar pegar o brinquedo com o deslocamento do '
                  'arrastar e/ou ',
              stg2: "sentado (a)",
              stg3: " deslocando o corpo com a inclinação para a "
                  "frente ou para a lateral. Pega novamente o brinquedo e repete"
                  " a brincadeira, é importante também o processo de repetição."
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV19TASK4'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Nessa fase, ${store.controllerKidName.text} começa a dialogar e se torna mais '
                  'conversador. Fale como foi o seu dia para ${store.controllerKidName.text}, estimulando o'
                  ' diálogo, pega objetos e nomeia, canta música infantil.'
          ),textCTRST(stg1: '\u2055 Não compra ou ofereça brinquedos que não são adequados para a idade de ${store.controllerKidName.text}. Pode gerar riscos. Observa as mudanças no desenvolvimento de ${store.controllerKidName.text} e registre. Compartilha as conquistas! Deixe as fotos no álbum do aplicativo.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Lembre-se sempre, estimule o olhar fixo face a face'
                  ' e deixe ${store.controllerKidName.text} ouvir sua voz, dando-lhe atenção, para que se '
                  'sinta seguro em fazer parte do diálogo. Fale com ${store.controllerKidName.text} sempre'
                  ' sorrindo brincando com expressões faciais de carinho.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nesta etapa, teremos que estimular as brincadeiras '
                  'de barriga para baixo de ${store.controllerKidName.text}, para conseguir o movimento '
                  'arrastar e gatinhar. Quando o movimento estiver ainda difícil'
                  ' para a execução ${store.controllerKidName.text} ficará um pouco irritado, manifestando'
                  ' com chorinho, então é hora de ajudar para ${store.controllerKidName.text} conseguir '
                  'completar o movimento. Vamos persistindo neste movimento de '
                  'arrastar e engatinhar, é muito importante para alcançar as '
                  'próximas etapas.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A brincadeira no chão com bolas pequenas de '
                  'diferentes cores ajuda nesta conquista. Deixe ${store.controllerKidName.text} de barriga'
                  ' para baixo e você fica na frente mostrando os movimentos com'
                  ' as bolas, e se emitir sons aproveita para chamar à atenção.'
                  ' Vamos ver como ${store.controllerKidName.text} reage com essa brincadeira! ${store.controllerKidName.text} foi na'
                  ' direção da bola?'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV19TASK5'),
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
