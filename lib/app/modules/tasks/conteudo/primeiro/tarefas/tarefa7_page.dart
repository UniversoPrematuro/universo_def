import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa7Page extends StatefulWidget {
  final String title;
  const Tarefa7Page({Key? key, this.title = 'Tarefa7Page'}) : super(key: key);
  @override
  Tarefa7PageState createState() => Tarefa7PageState();
}

class Tarefa7PageState extends State<Tarefa7Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 7"),
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
                                "SIGA A 7ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * .8,
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
                                      margin:
                                          const EdgeInsets.symmetric(vertical: 10.0),
                                      width: 250.0,
                                      //height: 250.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 101, 188, 89),
                                              width: 3.0)),
                                      child: Image.asset('images1/Gif4.gif'),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Agora vamos deixar o controle '
                                              'da cabeça nas posições corporais (sentado e de barriga para '
                                              'baixo), estimule para ocorrer o gira da cabeça de um lado para o'
                                              ' outro.'),
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
                                      MediaQuery.of(context).size.height * .9,
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
                                          left: 20.0,
                                          right: 20.0,
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
                                          '\u25CF Som',
                                          '- Vamos cantar e colocar música '
                                              'infantil, as sílabas deverão ser apresentadas: ex: mama, papa........'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
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
                                          '- Ao trocar a fralda, deixar a área'
                                              ' sempre seca, para evitar assadura nas dobras. Sempre manter as '
                                              'mãozinhas limpas. Não deixe panos soltos próximos, pois já '
                                              'conseguem agarrá-los e puxá-los para si.'),
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
                                                      builder: ((context) => const TaskSevens())
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

class TaskSevens extends StatefulWidget {
  const TaskSevens({super.key});

  @override
  State<TaskSevens> createState() => _TaskSevensState();
}

class _TaskSevensState extends State<TaskSevens> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text("Tarefa 6"),
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
                       speechPerson(),
          const SizedBox(height: 40.0,),
          textCTRST(
            stg1: '\u2055 Na ',
            stg2: 'posição sentada',
            stg3: ' com o apoio das costas oferecer um brinquedo leve, deixe '
                '${store.controllerKidName.text} pegar, vamos girar a cabeça de um lado para o outro na '
                'busca de visualizar o brinquedo e, ao final, deixe pegar e '
                'explorar o brinquedo com as mãozinhas. ',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está conseguindo avançar nas '
              'conquistas, aproveite: Parabéns!'),
          
          textCTRST(
            stg1: '\u2055 Estimule a independência e dê parabéns, faça festa a '
                'cada avanço que perceber.  Em todas essas ações verbalize de '
                'forma que cada conquista seja marcada por uma expressão de '
                'alegria e um som.',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV7TASK1'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos brincar com a nossa face, mandar beijo, fazer '
                'caminhãozinho, fazer caretinha, emitir sons específicos de '
                'modo prolongado, como “aaaaaaa” ou “gugugu”. Brinque de '
                'alternar expressões faciais.',
          ),textCTRST(stg1: '\u2055 Toda atenção e cuidado são necessários '
              'nessa fase com ${store.controllerKidName.text}. Observar sempre as expressões de ${store.controllerKidName.text}, '
              'neste período é a sua forma de comunicação.'),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV7TASK2'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 É hora de brincar com a mãozinha, bate palminha e '
                'depois com os pezinhos na posição de barriguinha para cima. ',
          ),textCTRST(stg1: '\u2055  ${store.controllerKidName.text} adquire a percepção de afeto a partir'
              ' da interação familiar. É importante o convívio de ${store.controllerKidName.text} com '
              'todos os membros da casa. O ambiente tranquilo ajuda para o'
              ' desenvolvimento. '),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV7TASK3'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Na hora da bagunça vamos brincar de gargalhada, de '
                'falar “muito bem”, “parabéns” “viva”. Vamos movimentar: de '
                'barriguinha para cima vamos ajudar a virar de lateral e depois'
                ' barriguinha para baixo. ',
          ),textCTRST(stg1: '\u2055 As atividades interativas de ${store.controllerKidName.text} devem ser'
              ' prazerosas e alegres, mas não exagere provocando a '
              'irritabilidade em ${store.controllerKidName.text}. '),
          // SizedBox(height: group=='EST'?15.0:0.0,),
          textCTRST(
            stg1: '\u2055 Brincadeiras de esconder o rosto com as mãos também '
                'são boas opções para estimular a verbalização. (ex: cadê, '
                'achou etc..)',
          ),
          const SizedBox(height: 10.0,),
          // Radin(UID,'DEV7TASK4'),


          const SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Vamos deixar uma luz fraca, somente um pontinho de '
                'claridade, pois é hora de descansar. O silêncio ajuda. Acalme com '
                'palavras serenas e de afeto. Ao acordar repita palavras de '
                'carinho.',
          ),textCTRST(stg1: '\u2055 Verificar o tempo de permanência e '
              'quantidade de visitas para ${store.controllerKidName.text}. O excesso pode gerar reação de '
              'estresse. Todas as atividades oferecidas para ${store.controllerKidName.text} colaboram '
              'para o seu desenvolvimento, observe sua expressão para verificar'
              ' a tolerância. Se a expressão facial estiver tranquila significa'
              ' que está bem. '),
          const SizedBox(height: 10.0,),
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
