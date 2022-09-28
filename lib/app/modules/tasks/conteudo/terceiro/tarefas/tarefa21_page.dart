import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa21Page extends StatefulWidget {
  final String title;
  const Tarefa21Page({Key? key, this.title = 'Tarefa21Page'}) : super(key: key);
  @override
  Tarefa21PageState createState() => Tarefa21PageState();
}

class Tarefa21PageState extends State<Tarefa21Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 21"),
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
                                "SIGA A 21ª TAREFA EM CASA",
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
                                              'images1/fig79-1.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-7.jpeg',
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
                                          'A hora do estímulo deve ser '
                                              'divertida e agradável. Organize essa atividade para os momentos '
                                              'que a rotina dos afazeres estiver mais tranquila. Assim, você '
                                              'irá estimular ${store.controllerKidName.text} de maneira divertida, potencializando o '
                                              'aprendizado e demostrando maior segurança.'),
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
                                      MediaQuery.of(context).size.height * 1.55,
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
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'O sorriso, a gargalhada e o contato '
                                              'visual fazem parte da linguagem da criança. Estimule sempre '
                                              'aproveitando os momentos da rotina diária da casa.'),
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
                                          'Neste momento do desenvolvimento os'
                                              ' objetos menores podem ser alcançados e manuseados pela criança. '
                                              'Não deixe peças pequenas nos locais de acesso (chão, berço), '
                                              'muito cuidado com remédios, principalmente quando acidentalmente '
                                              'caem no chão, objetos pontiagudos também gera risco, os materiais'
                                              ' de limpeza devem ser manuseados longe das crianças e armazenados'
                                              ' em ambientes seguros.'),
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
                                                      builder: ((context) => const TaskTwentO())
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

class TaskTwentO extends StatefulWidget {
  const TaskTwentO({super.key});

  @override
  State<TaskTwentO> createState() => _TaskTwentOState();
}

class _TaskTwentOState extends State<TaskTwentO> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 21"),
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

                      SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular ${store.controllerKidName.text} a engatinhar! Fique em uma '
                  'distância de 1 metro de ${store.controllerKidName.text}, deixe ${store.controllerKidName.text} ',
              stg2: "de barriguinha para baixo",
              stg3: " e chame pelo seu nome e mostra um brinquedo. Faça diversos"
                  " barulhos, com diferentes tons de voz e deixe ${store.controllerKidName.text} se esforçar"
                  " para alcançar, arrastando ou engatinhando o importante é o "
                  "deslocamento nesta posição, sempre comemore quando ${store.controllerKidName.text} conseguir"
                  " responder ao estímulo."
          ),textCTRST(stg1: '\u2055 Essa fase de desenvolvimento, ${store.controllerKidName.text} fica muito tempo no chão para brincar. Limpe todo o ambiente, principalmente nos cantos das paredes, embaixo do sofá e locais que os brinquedos fiquem guardados, para evitar algum contratempo com bichos indesejáveis.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Mantenha um diálogo agradável e divertido durante as'
                  ' brincadeiras para construir uma conexão significativa entre '
                  'vocês. Os momentos das brincadeiras devem ser momentos para '
                  'você também relaxar e desligar dos afazeres diários.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV21TASK1'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Coloque ${store.controllerKidName.text} na ',
              stg2: "posição sentado (a)",
              stg3: " e provoca um deslocamento do seu tronco hora para a direita"
                  " e depois de alguns minutinhos um deslocamento para a esquerda."
          ),textCTRST(stg1: '\u2055 Cuidar da higiene bucal de ${store.controllerKidName.text} é extremamente importante. Siga as orientações do(a) especialista.  Verifique a carteirinha de vacinação de ${store.controllerKidName.text}. É importante mantê-la em dia.'),
          textCTRST(
              stg1: 'O movimento parece que estará empurrando para o lado, de modo'
                  ' que ${store.controllerKidName.text} mantenha-se ',
              stg2: "sentado (a)",
              stg3: ", assim poderemos treinar o equilíbrio e o apoio na lateral"
                  " com a mãozinha."
          ),
          textCTRST(
              stg2: "Importante:",
              stg3: " observe a reação de ${store.controllerKidName.text} e o movimento deverá ser bem devagar,"
                  " somente para provocar um deslocamento e uma reação de controle "
                  "de equilíbrio do corpo."
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nessa tarefa, faça sons de trenzinho, ensine ${store.controllerKidName.text} a '
                  'fazer também. Nessa fase ${store.controllerKidName.text} aprenderá a imitar algumas ações'
                  ' e sons, por isso aproveite a brincadeira aumentando seu elo '
                  'afetivo e interação.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV21TASK2'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Crianças nessa idade adoram conversar e ouvir conversas.'
                  ' Conte uma história para ${store.controllerKidName.text}, com muitos sons e muitos sorrisos.'
                  ' Esse momento também deve ser para você relaxar deixando de'
                  ' lado a rotina diária.'
          ),textCTRST(stg1: '\u2055 Qualquer um que se aproximar de ${store.controllerKidName.text} com uma expressão facial engraçada tem grandes chances de conquistar a amizade de ${store.controllerKidName.text}. Aproveite essa fase para socialização e familiarização. Não esqueça a orientação da lavagem de mãos antes de aproximar de ${store.controllerKidName.text} e de seus brinquedos.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Faça com que, em dados momentos da história, você faça'
                  ' cócegas em ${store.controllerKidName.text}, estimulando os músculos da face, pelo sorriso,'
                  ' e do tronco, pela força que ${store.controllerKidName.text} irá fazer em resposta as cócegas.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Nesta etapa os movimentos efetuados de ',
              stg2: "barriguinha para baixo",
              stg3: "é muito importante para a conquistas das próximas etapas, como"
                  " o andar, então deixe ${store.controllerKidName.text} nos diferentes horários do dia de "
                  "brincando de barriga para baixo, você presenciará a grande "
                  "evolução e as novas conquistas no desenvolvimento."
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 As crianças pouco expostas nesta posição de ',
              stg2: "barriguinha para baixo",
              stg3: ", geralmente, se expressam com desconforto fazendo caretinha"
                  " e chorinho. Frente a essa situação precisamos proporcionar "
                  "essa experiência na posição para ${store.controllerKidName.text} acostumar. Em cada período"
                  " do dia você coloca um pouquinho ${store.controllerKidName.text} de barriga para baixo"
                  " e brinca, ao poucos acostumará!"
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV21TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos estimular os movimentos laterais. Com ${store.controllerKidName.text} na ',
              stg2: "posição sentado (a)",
              stg3: ", se posicione atrás de ${store.controllerKidName.text} e interaja com ele (a), falando"
                  " “oooii”, “cadê ${store.controllerKidName.text}?”, fazendo um barulho com o brinquedo/objeto."
          ),textCTRST(stg1: '\u2055 Permita alguns momentos em lugar seguro e de costume de permanência de ${store.controllerKidName.text}, observe e deixe ${store.controllerKidName.text} brincar para explorar os brinquedos, mas fica atenta e observe sempre os movimentos de ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ${store.controllerKidName.text} irá procurar o som, virando-se o corpo para '
                  'encontrá-lo e quando acontecer o movimento, sorria e com muita'
                  ' festa por suas tentativas, sempre com o contato visual face'
                  ' a face para estimular o sorriso de ${store.controllerKidName.text} também.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV21TASK4'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Agora vamos ver a ',
              stg2: "movimentação em todas as posições corporais",
              stg3: ", você poderá estimular de forma voluntária. Registre! Como"
                  " os movimentos de ${store.controllerKidName.text} estão de barriga para baixo, barriga para"
                  " cima, rolar e sentado. Deixe no álbum do aplicativo os registros."
                  " Vamos comemorar juntos essas conquistas!"
          ),textCTRST(stg1: '\u2055 A hora do banho pode ser um momento relaxante. Assegure os cuidados necessários para evitar acidentes. Nunca deixe ${store.controllerKidName.text} sozinho no momento do banho e de troca de roupa. ${store.controllerKidName.text} já movimenta com maior rapidez e pode ocorrer quedas. Fique de olho!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais.'
                  ' O sorriso e a gargalhada já fazem parte da linguagem da criança!'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Um movimento novo, coloque ${store.controllerKidName.text} em pé com apoio (sofá,'
                  ' cadeira) pegue a mão de ${store.controllerKidName.text} e estimule a sentar no chão, '
                  'vamos treinar o agachamento.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV21TASK5'),

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
