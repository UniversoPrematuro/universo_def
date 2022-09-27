import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa11Page extends StatefulWidget {
  final String title;
  const Tarefa11Page({Key? key, this.title = 'Tarefa11Page'}) : super(key: key);
  @override
  Tarefa11PageState createState() => Tarefa11PageState();
}

class Tarefa11PageState extends State<Tarefa11Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 11"),
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
                                "SIGA A 11ª TAREFA EM CASA",
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
                                          'images1/46 IMAGEM 1A.jpeg'),
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
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Vamos dar uma atenção especial '
                                              'para o movimento de rolar, vamos em frente, todo início de '
                                              'conquista do movimento provoca um desconforto, precisamos vencer.'
                                              ' O difícil hoje é o fácil amanhã! Seguiremos em frente......'),
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
                                      MediaQuery.of(context).size.height * 1.1,
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
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Som',
                                                'Momento para estimular a repetição das '
                                                    'palavras, mama, papa entre outras.'),
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
                                          ElevatedButton.icon(
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
                                                      builder: ((context) => const TaskEleven())
                                                    )
                                                  );
                                          },
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

class TaskEleven extends StatefulWidget {
  const TaskEleven({super.key});

  @override
  State<TaskEleven> createState() => _TaskElevenState();
}

class _TaskElevenState extends State<TaskEleven> {
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

                      textCTRST(
            stg1: '\u2055 Hora do banho! Ensine ${store.controllerKidName.text} cada parte do corpo dele(a) '
                '“Essa é sua mãozinha”, “Esse é seu pézinho”. Incentive-o (a) a'
                ' movimentar a parte do corpo que você esta ensinando e sempre '
                'comemore cada conquista.',
          ),textCTRST(stg1: '\u2055 Após o banho, quando for vestir ${store.controllerKidName.text}, tome '
              'cuidado! Evite esticar demais seus bracinhos e perninhas, além '
              'de cuidar da cabeça.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Após o banho, quando for vestir ${store.controllerKidName.text}, mande beijos, '
                'faça caretas engraçadas, estimule ${store.controllerKidName.text} a movimentar o rosto. ',
          ),textCTRST(stg1: '\u2055 A criança precisa do carinho, da alegria e '
              'do estímulo para o seu melhor desenvolvimento. Aproveita para '
              'oferecer!'),SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Ofereça o brinquedo na lateral da criança e estimule '
                'o girar do corpo para alcançar e pegar o brinquedo, uma vez do'
                ' lado direito do corpo e outra vez do lado esquerdo. Nas '
                'conquistas dos movimentos responde com o parabéns e palmas, '
                '${store.controllerKidName.text} entenderá que fez algo positivo e estimulará para novas '
                'conquistas. ',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV11TASK1'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque ${store.controllerKidName.text} de ',
            stg2: 'barriguinha para baixo',
            stg3: ' e coloque os brinquedos favoritos por perto, ${store.controllerKidName.text} deverá '
                'explorar sozinho(a) e livremente os brinquedos. Depois, '
                'incentive ${store.controllerKidName.text} a buscar com a mão o brinquedo e a agarra-lo.',
          ),textCTRST(stg1: '\u2055 Não deixar ${store.controllerKidName.text} sozinho(a) em cima de uma mesa'
              ' ou sofá, nem por um segundo, porque ${store.controllerKidName.text} pode cair. Estão '
              'ficando mais rápidos para o movimento.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 O brincar e explorar os brinquedos deverão ser '
                'estimulados na posição barriguinha para baixo e para cima. '
                'Vamos aprender e treinar o movimento do rolar para alcançar os'
                ' brinquedos. ',
          ),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Atenção: Escolha um lugar seguro e sem risco de '
                'quedas, o rolar e o deslocamento vão surgindo com maior '
                'facilidade e rapidez. Cuidado!',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV11TASK2'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Esse momento é para ${store.controllerKidName.text} permanecer com movimentação '
                'espontânea. Deixa de ',
            stg2: 'barriguinha para baixo e depois para cima',
            stg3: '. No ambiente deixa uma música infantil e/ou instrumental '
                'durante o momento da brincadeira com os brinquedos para ocorrer'
                ' os movimentos livres.',
          ),textCTRST(stg1: '\u2055 Sempre verifique a temperatura da água do '
              'banho antes de colocar ${store.controllerKidName.text} na banheira.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Interaja com ${store.controllerKidName.text} conversando com ele de forma que '
                '${store.controllerKidName.text} observe suas expressões e gestos que ${store.controllerKidName.text} possa entender '
                'as intenções e sentidos da sua fala. Explora os sons das '
                'sílabas mama, papa, dada.......',
          ),textCTRST(stg1: '\u2055 Os brinquedos devem ser lavados e '
              'higienizados para garantir a saúde de ${store.controllerKidName.text}.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV11TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque ${store.controllerKidName.text} na ',
            stg2: 'posição sentada',
            stg3: ' com apoio (carrinho, cadeirinha). Bate suas palmas na '
                'frente dele, estimule a fazer igual.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está ficando cada vez mais curiosa(o).'
              ' Não deixe objetos perigosos próximo à ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Cante uma canção para ${store.controllerKidName.text}! Uma música alegre, com um'
                ' ritmo que incentive a bater palmas. Ótimo para uma interação.',
          ),textCTRST(stg1: '\u2055 Converse com ${store.controllerKidName.text}, mas evite falar '
              'infantilizando, fale com sua tonalidade normal.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Deixe a brincadeira acontecer, barriguinha para baixo'
                ' e na frente e dos lados brinquedos coloridos, macios e '
                'seguros. Vamos observar como ${store.controllerKidName.text} vai reagir. No caso de '
                'expressar incomodo com chorinho e ruídos de desagrados, '
                'significa que ${store.controllerKidName.text} deverá ser exposto mais vezes na posição de'
                ' barriguinha para baixo. Esta posição é importante para '
                'favorecer as conquistas das novas etapas.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV11TASK4'),


          SizedBox(height: 60.0,),
          textCTRST(
            stg1: '\u2055 Coloque ${store.controllerKidName.text} de ',
            stg2: 'barriguinha pra baixo ',
            stg3: 'e brinque de esconder seu rosto. “Onde está mamãe/papai?”, '
                '“Achou”, utilize essas frases para chamar a atenção de ${store.controllerKidName.text} '
                'para a brincadeira, sempre sorrindo e olho no olho.',
          ),textCTRST(stg1: '\u2055 A pele de ${store.controllerKidName.text} é muito sensível. Tenha '
              'cuidado nos banhos de sol.'),
          SizedBox(height: 15.0,),
          textCTRST(
            stg1: '\u2055 Oferecer brinquedo de tamanhos diferentes, ${store.controllerKidName.text} deverá'
                ' ser capaz de segurar. Os diferentes tamanhos ajuda a percepção'
                ' de textura, forma, peso..... Com essa experiência o sistema de'
                ' percepção vai aprimorando cada vez mais.',
          ),textCTRST(stg1: '\u2055 Manter roupas confortáveis para possibilitar'
              ' os movimentos corporais com boa amplitude, fique atenta na '
              'temperatura do ambiente para escolher a roupa do dia.'),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV11TASK5'),

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
