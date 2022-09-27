import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa12Page extends StatefulWidget {
  final String title;
  const Tarefa12Page({Key? key, this.title = 'Tarefa12Page'}) : super(key: key);
  @override
  Tarefa12PageState createState() => Tarefa12PageState();
}

class Tarefa12PageState extends State<Tarefa12Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 12"),
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
                                "SIGA A 12ª TAREFA EM CASA",
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
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                      ),
                                      width: 250.0,
                                      //height: 250.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 101, 188, 89),
                                              width: 3.0)),
                                      child: Image.asset(
                                          'images1/46 IMAGEM 2A.jpeg'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
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
                                          '\u25CF Movimento',
                                          'A posição de sentado deverá ser '
                                              'trabalhada com redução do apoio corporal. Os ganhos dos '
                                              'movimentos são gradativos e progressivos, então vamos estimular.'
                                              ' Lembre que cada posição no início tem a necessidade de ajuda e '
                                              'apoio e no momento da conquista os movimentos se tornam de forma'
                                              ' independente.'),
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                'A cada som percebido colocar o nome '
                                                    'para a identificação. O som percebido seguido da verbalização '
                                                    '“A porta bateu”.'),
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
                                                left: 20.0,
                                                right: 20.0,
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
                                                '\u25CF Atenção!',
                                                'A criança precisa do carinho, da '
                                                    'alegria e do estímulo para o seu melhor desenvolvimento. '
                                                    'Aproveite para oferecer!'),
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
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          icon: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskTwelve())
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

class TaskTwelve extends StatefulWidget {
  const TaskTwelve({super.key});

  @override
  State<TaskTwelve> createState() => _TaskTwelveState();
}

class _TaskTwelveState extends State<TaskTwelve> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 10"),
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
                height: MediaQuery.of(context).size.height * 3,
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
                                  EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images1/ballon9.png')),
                              ),
                              child: Text(
                                "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                " dias, nestes primeiros meses.\nVamos Começar?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 40.0,
                      ),

                      SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 É hora da história! Pegue dois ursinhos de pelúcia, '
                'ou dois bonequinhos, ou com fantoches, crie uma história para '
                '${store.controllerKidName.text} com muita alegria, sons e risadas. Se possível, coloque '
                'uma canção na história também.',
          ),textCTRST(stg1: '\u2055 Não colocar fios ou cordões no pescoço de '
              '${store.controllerKidName.text}, nem para pendurar a chupeta.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Frases curtas, o tom de voz, gestos e as expressões '
                'faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensações'
                ' e sentidos da fala do adulto.',
          ),textCTRST(stg1: '\u2055 Mantenha sempre o ambiente lindo, arejado e'
              ' seguro, oferecer somente brinquedos apropriados para a idade.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV12TASK1'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 No período da manhã e tarde brincar com ${store.controllerKidName.text} na '
                'posição sentada, oferecer o apoio somente o necessário, deixa '
                'vencer os pequenos obstáculos. Na posição sentada a cabeça não'
                ' poderá ter apoio, somente apoio na cintura para baixo. Vamos '
                'em frente!',
          ),textCTRST(stg1: '\u2055 Nessa idade, tudo para ${store.controllerKidName.text} é uma '
              'brincadeira (tanto na alimentação quanto na hora do banho). '
              'Aproveite esses momentos para interagir! '),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Nas ',
            stg2: 'diferentes posições corporais ',
            stg3: 'deixar ${store.controllerKidName.text} alcançar e pegar o brinquedo. Oferecer objetos '
                'macios, leves e seguros.',
          ),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Manter atenção ao tom de voz e representação dos '
                'sentidos da fala com expressões faciais e gestos ao interagir '
                'com ${store.controllerKidName.text}. Isso ajudará ${store.controllerKidName.text} entender melhor.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV12TASK2'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Após o banho, faça uma massagem com óleo específico '
                'para criança, provocará o relaxamento e estímulo sensorial. ',
          ),textCTRST(stg1: '\u2055 Após o banho é um momento para relaxar, '
              'deixe o ambiente silencioso, reduz a luz natural do ambiente.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Hora do relaxamento. Cante músicas calmas e agradáveis'
                ' que ajudem no relaxamento, principalmente na hora do soninho. ',
          ),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Hora da brincadeira. Nos momentos de descontração '
                'abraçar ${store.controllerKidName.text} e brincar de folia com risadas e cocegas, pega o '
                'pezinho (canta o sapo não lava o pé). O pezinho é uma área '
                'ideal para estimular a parte sensorial, além da cocega pode '
                'massagear, passar texturas diferentes (algodão, pincel, escova '
                'macia de cabelo). Lembre, a pele de ${store.controllerKidName.text} é muito delicada.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV12TASK3'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} da ',
            stg2: 'posição lateral para a posição de barriguinha para baixo',
            stg3: ', sempre com o acompanhamento. Incentive-o(a) a fazer o '
                'movimento sozinho com o brinquedo favorito do ${store.controllerKidName.text}.',
          ),textCTRST(stg1: '\u2055 Acompanhe o peso de ${store.controllerKidName.text}, compareça em '
              'todas as consultas regulares.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Neste momento, faça sons, estimule ${store.controllerKidName.text} chacoalhando '
                'o brinquedo dele, mande beijos, tudo para incentiva-lo(a) a se'
                ' movimentar sozinho.',
          ),textCTRST(stg1: '\u2055 Esse período ${store.controllerKidName.text} leva os objetos na boca,'
              ' assim vamos lavar e cuidar da higiene dos objetos que estiverem'
              ' em contato com ${store.controllerKidName.text}. '),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Vamos sentar de frente com ${store.controllerKidName.text}, segure nas mãozinhas'
                ' e deixa ${store.controllerKidName.text} experimentar a posição sentada sem apoio da '
                'lateral, somente suas mãos apoiando. Vamos nos divertir e '
                'cantar uma música de sua preferência. Essa tarefa deverá ser '
                'executada em período curto, mas aumentando gradativamente '
                'conforme a conquista e independência para o movimento.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV12TASK4'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Agora vamos ver a ',
            stg2: 'movimentação em todas as posições corporais',
            stg3: ', você poderá estimular de forma voluntária. Registre os '
                'movimentos conquistados de barriguinha para baixo, para cima e'
                ' sentado',
          ),textCTRST(stg1: '\u2055 O padrão de sono é diferente para cada '
              'criança. É importante conhecer e respeitar as características '
              'de ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais'
                ' com sons alegres, ${store.controllerKidName.text} se sentirá o afeto e importância na '
                'atenção recebida. As conquistas são vitórias!',
          ),textCTRST(stg1: '\u2055 Cada criança desenvolve um ritmo para o '
              'sono, respeite o horário do sono e mantenha o ambiente tranquilo.'),
          SizedBox(height: 10.0,),
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
