import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa20Page extends StatefulWidget {
  final String title;
  const Tarefa20Page({Key? key, this.title = 'Tarefa20Page'}) : super(key: key);
  @override
  Tarefa20PageState createState() => Tarefa20PageState();
}

class Tarefa20PageState extends State<Tarefa20Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 20"),
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
                                "SIGA A 20ª TAREFA EM CASA",
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
                                              'images1/fig79-8.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/fig79-10.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-6.jpeg',
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
                                          'Nessa fase, ${store.controllerKidName.text} adquire forças '
                                              'contra a gravidade, rolando, sentando sem apoio e ficando em pé.'
                                              ' Vamos trabalhar os estímulos para aprimorar esses movimentos?'),
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
                                      MediaQuery.of(context).size.height * 1.71,
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
                                          'O afeto e a interação constante '
                                              'com os pais e familiares são primordiais para o desenvolvimento'
                                              ' integral da criança, interaja, brinque e observe as respostas e'
                                              ' expressões de ${store.controllerKidName.text}.'),
                                    ),
                                    const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("CUIDADO!",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 214, 14, 0),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 50.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '${store.controllerKidName.text} está desenvolvendo e crescendo,'
                                              ' consegue comunicar com maior independência, mas é hora de '
                                              'redobrar a atenção.\n- Nunca deixe ${store.controllerKidName.text} totalmente sozinho sem '
                                              'supervisão,\n- Não deixe com pessoas desconhecidas, proteja contra'
                                              ' os acidentes domésticos.\n- Verifique na casa o que poderia '
                                              'oferecer perigo, algum móvel, objetos pequenos e lembre, essa '
                                              'fase ele pode segurar em superfície mais alta para se levantar, '
                                              'cuidado com toalhas de mesa em seu alcance.'),
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
                                                      builder: ((context) => const TaskTwent())
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
class TaskTwent extends StatefulWidget {
  const TaskTwent({super.key});

  @override
  State<TaskTwent> createState() => _TaskTwentState();
}

class _TaskTwentState extends State<TaskTwent> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 20"),
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

                      SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Deixe ${store.controllerKidName.text} em um ambiente estimulante, com '
                  'diferentes objetos/brinquedos seguros, com diferentes '
                  'texturas, cores, formatos ao seu alcance. Isso irá estimular'
                  ' o engatinhar e, posteriormente em sequência o andar.'
          ),textCTRST(stg1: '\u2055 Atenção com os objetos muito pequenos, proteja ${store.controllerKidName.text}, não ofereça objetos que geram riscos. As crianças colocam tudo na boca, objetos que podem soltar peças também são de risco. Não deixa ${store.controllerKidName.text} em locais altos que não ofereça segurança. Transporta sempre ${store.controllerKidName.text} na cadeirinha de segurança no carro, devidamente colocada. Proteja!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Aproveite esse momento e brinque com ${store.controllerKidName.text} estimulando'
                  ' o sorriso e/ou pequenas gargalhadas com mímicas faciais sempre'
                  ' buscando que ${store.controllerKidName.text} mantenha o contato visual fixo em você. '
                  'Estimule ${store.controllerKidName.text} com sílabas: ma-ma, pa-pa........'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 É hora de brincar de rolar, coloque ${store.controllerKidName.text} no chão ',
              stg2: "de barriguinha para cima",
              stg3: " e depois oferece um brinquedo e/ou objeto de interesse"
                  " e provoca com movimentos para que ${store.controllerKidName.text} movimente em busca do"
                  " brinquedo, conseguindo concluir o movimento deixe ${store.controllerKidName.text} brincar"
                  " um pouco com o objeto. Vamos girar o corpo uma vez para o lado"
                  " direito e outra para o lado esquerdo. Importante treinar os"
                  " movimentos dos dois lados do corpo."
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV20TASK1'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Coloque os brinquedos favoritos de ${store.controllerKidName.text}, de diferentes'
                  ' tamanhos e formas, dentro de uma caixa e deixe que ${store.controllerKidName.text}, de'
                  ' forma independente, tirar o objeto da caixa e colocar de '
                  'volta. Fica somente supervisionando de longe.',
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está se desenvolvendo e ficando cada vez mais ativo. É comum ter dificuldades para adormecê-lo. É importante inserir uma rotina nos afazeres. Estabeleça horário para as atividades de ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Em um outro momento, a cada brinquedo que ${store.controllerKidName.text} segurar'
                  ' e tirar da caixa, ensine o nome e ensine a repetir as sílabas'
                  ' da palavra “esse é o cho-ca-lho”, “este é o ur-si-nho”.....',
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: "sentado (a)",
              stg3: ", ofereça brinquedos/objetos de diferentes tamanhos, neste"
                  " momento começará a pegar objetos menores somente utilizando"
                  " dois dedos da mão, na brincadeira deverá ter objetos de diferentes"
                  " tamanhos para treinar o movimento de pegar."
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV20TASK2'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: "de barriguinha para cima",
              stg3: ", coloque seu brinquedo favorito um pouco mais longe de seu"
                  " alcance. Estimule para que ${store.controllerKidName.text} o alcance, rolando e arrastando."
                  " Agora a brincadeira associará dois movimentos o rolar e o arrastar."
                  " Como está? ${store.controllerKidName.text} já está conseguindo?"
          ),textCTRST(stg1: '\u2055 A criança nessa idade quer explorar e é muito curiosa. Tenha cuidado com objetos próximos a ele(a), degraus e escadas. Também evite deixar ${store.controllerKidName.text} explorar estantes ou mesas que possam balançar e que um objeto possa cair. Evita acidentes, proteja sua criança!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Hora do barulho! Oferece dois objetos, um em cada '
                  'mão e, estimule ${store.controllerKidName.text} a bater os objetos um contra o outro. O'
                  ' objeto não pode ser grande e deve ter um peso para ${store.controllerKidName.text} conseguir'
                  ' segurar. Quando ${store.controllerKidName.text} executar o movimento, vamos incentivar'
                  ' batendo palma e falando “vivaaa”, o elogio é muito importante'
                  ' para as conquistas no momento e futuras.',
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV20TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos ensinar formas para ${store.controllerKidName.text}. Com ${store.controllerKidName.text} na posição ',
              stg2: "sentado (a)",
              stg3: ", ofereça objetos seguros no formato bola e quadrado, dê-os"
                  " para ${store.controllerKidName.text} explorá-los."
          ),textCTRST(stg1: '\u2055 Procure fazer as atividades e tarefas com ${store.controllerKidName.text} nos mesmos horários do dia, a rotina diária estabelecida é mais saudável para ${store.controllerKidName.text} (ficará mais calmo, concentrado e com maior interação com o ambiente). Organize o tempo, você também precisa para seus cuidados!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A cada forma diferente que ${store.controllerKidName.text} segurar, fale o formato'
                  ' que o objeto tem “isso é uma bo-la”, “isso é um qua-dra-do”.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Iniciar uma conversa face a face é importante para a'
                  ' interação e o aprendizado de ${store.controllerKidName.text}, aproveite para estimular '
                  'a expressão vocal de ${store.controllerKidName.text}.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Dois movimentos, primeiro deixe ${store.controllerKidName.text} ',
              stg2: "de barriguinha para baixo",
              stg3: " e você fica na frente, chama a atenção de ${store.controllerKidName.text} para você e"
                  " oferece suas duas mãos para ${store.controllerKidName.text} segurar e fazer o movimento"
                  " para levantar, ficando de joelhos e você oferecendo o apoio."
                  " Vamos repetindo os exercícios e com o treino ${store.controllerKidName.text} irá conquistando"
                  " os movimentos com maior independência."
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV20TASK4'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} na posição ',
              stg2: "sentado (a)",
              stg3: ", jogue uma bolinha para ele(a), de maneira que a bolinha"
                  " passe ao lado de ${store.controllerKidName.text} e que ele tentará alcançar a bolinha."
                  " Esse exercício irá favorecer os músculos da barriga, "
                  "importantes para que ${store.controllerKidName.text} consiga andar."
          ),textCTRST(stg1: '\u2055 É preciso cuidar do ambiente para proteger ${store.controllerKidName.text} de ocorrências alérgicas, o ambiente deve ser limpo diariamente, e evitar cortinas, tapetes, almofadas. A casa deverá manter arejada com janelas abertas e, cuidado com mofo e umidade nas paredes podem desencadear situação de adoecimento de ${store.controllerKidName.text}.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Sempre que ${store.controllerKidName.text} fizer uma tentativa e/ou efetivar '
                  'uma tarefa festeje com ele, dê parabéns, bate palma e demostre'
                  ' sua alegria.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ${store.controllerKidName.text} na ',
              stg2: "posição deitado (a)",
              stg3: " de costas você deverá oferecer a sua mão como suporte para"
                  " ${store.controllerKidName.text} sentar. Se precisar no começo oferece as duas e apoia as"
                  " duas mãos de ${store.controllerKidName.text}, mas com a repetição e treino do movimento"
                  " você passa para somente uma mão de apoio."
          ),

          SizedBox(height: 10.0,),
          // Radin(UID,'DEV20TASK5'),
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
